class Person < ActiveRecord::Base
  has_one :employee
  has_many :employments
  has_many :entities, :through => :employments
  has_many :solicitations

  def name
    "#{self.first_name} #{self.last_name}"
  end

  def name_with_national_number
    "#{self.name} (#{self.national_number})"
  end
end
