class Employee < ActiveRecord::Base
  belongs_to :person
  has_many :contracts
  has_many :functions, :through => :contracts
  has_many :accidents
  has_many :irregular_performances

  def name
    "#{self.person.first_name} #{self.person.last_name}"
  end
end
