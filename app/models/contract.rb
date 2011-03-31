class Contract < ActiveRecord::Base
  belongs_to :function
  belongs_to :employee
  has_many :replacements, :foreign_key => "replacer_id", :dependent => :destroy
  has_many :replacing, :through => :replacements, :source => :replaced
  has_many :reverse_relationships, :foreign_key => "replaced_id", :class_name => "Replacement", :dependent => :destroy
  has_many :replacers, :through => :reverse_relationships, :source => :replacer
  has_many :evaluations

  attr_accessor :should_destroy

  after_update :save_all_replacing

  def replaces!(replaced_contract)
    replacements.create!(:replaced_id => replaced_contract.id)
  end

  def end_replacement!(replaced_contract)
    replacements.find_by_replaced_id(replaced_contract).destroy
  end

  def description
    "#{self.function.name unless self.function.nil?} - #{self.employee.name_with_employee_number unless self.employee.nil?}"
  end

  def replaced_contracts=(replaced_contracts)
    replaced_contracts.each do |replaced_contract|
      if replaced_contract[:replacement_id].blank?
        self.replacements.build({:replacer_id => self.id, :replaced_id => replaced_contract[:id]})
      else
        replacement = self.replacements.detect { |r| r.id == replaced_contract[:replacement_id].to_i }
        replacement.replaced_id = replaced_contract[:id].to_i
      end
    end
  end

  def save_all_replacing
    self.replacements.each do |r|
      r.save(false)
    end
  end

  def should_destroy?
    should_destroy == 1
  end
end
