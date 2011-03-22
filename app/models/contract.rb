class Contract < ActiveRecord::Base
  belongs_to :function
  belongs_to :employee
  has_many :replacements, :foreign_key => "replacer_id", :dependent => :destroy
  has_many :replacing, :through => :replacements, :source => :replaced
  has_many :reverse_relationships, :foreign_key => "replaced_id", :class_name => "Replacement", :dependent => :destroy
  has_many :replacers, :through => :reverse_relationships, :source => :replacer
  has_many :evaluations

  def replaces!(replaced_contract)
    replacements.create!(:replaced_id => replaced_contract.id)
  end

  def end_replacement!(replaced_contract)
    replacements.find_by_replaced_id(replaced_contract).destroy
  end

  def description
    "#{self.function.name unless self.function.nil?} - #{self.employee.name_with_employee_number unless self.employee.nil?}"
  end
end
