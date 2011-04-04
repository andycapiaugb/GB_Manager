class Contract < ActiveRecord::Base
  belongs_to :function
  belongs_to :employee
  has_many :replacement_contracts, :foreign_key => "replacer_id", :class_name => "Replacement", :dependent => :destroy
  has_many :replacing, :through => :replacement_contracts, :source => :replaced
  has_many :replaced_contracts, :foreign_key => "replaced_id", :class_name => "Replacement", :dependent => :destroy
  has_many :replacers, :through => :replaced_contracts, :source => :replacer
  has_many :evaluations

  attr_accessor :should_destroy_replacement

  after_update :save_all_replacing

  def replaces!(replaced_contract)
    self.replacement_contracts.create!(:replaced_id => extract_contract_id_from(replaced_contract))
  end

  def end_replacement!(replaced_contract)
    self.replacement_contracts.find_by_replaced_id(extract_contract_id_from(replaced_contract)).destroy
  end

  def description
    "#{self.function.name unless self.function.nil?} - #{self.employee.name_with_employee_number unless self.employee.nil?}"
  end

  def replaced_contracts=(replaced_contracts)
    replaced_contracts.each do |replaced_contract|
      if replaced_contract[:replacement_id].blank?
        replaces!(replaced_contract[:id].to_i)
      else
        replacement = self.replacement_contracts.detect { |r| r.id == replaced_contract[:replacement_id].to_i }
        replacement.replaced_id = replaced_contract[:id].to_i
      end

      unless replaced_contract[:should_destroy_replacement].blank?
        Replacement.find(replaced_contract[:replacement_id]).destroy
      end
    end
  end

  def save_all_replacing
    self.replacement_contracts.each do |r|
        r.save(false)
    end
  end

  private
  
  def extract_contract_id_from(replaced_contract)
    if replaced_contract.class == Contract
      replaced_contract_id = replaced_contract.id
    elsif replaced_contract.is_a? Integer
      replaced_contract_id = replaced_contract
    end
    replaced_contract_id
  end
end
