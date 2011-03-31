class Employee < ActiveRecord::Base
  belongs_to :person
  has_many :contracts
  has_many :functions, :through => :contracts
  has_many :accidents
  has_many :irregular_performances
  has_many :computer_assignments
  has_many :computers, :through => :computer_assignments

  def name
    "#{self.person.first_name} #{self.person.last_name}"
  end

  def name_with_employee_number
    "#{self.name unless self.nil?} (#{self.number unless self.nil?})"
  end
end
