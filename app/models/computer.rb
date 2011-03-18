class Computer < ActiveRecord::Base
  has_many :computer_assignments
  has_many :employees, :through => :computer_assignments
end
