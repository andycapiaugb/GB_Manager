class ComputerAssignment < ActiveRecord::Base
  belongs_to :employee
  belongs_to :computer
end
