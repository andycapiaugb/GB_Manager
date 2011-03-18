class Person < ActiveRecord::Base
  has_one :employee
  has_many :employments
  has_many :entities, :through => :employments
  has_many :solicitations

  def name_with_national_number
    "#{self.first_name} #{self.last_name} (#{self.national_number})"
  end
end
