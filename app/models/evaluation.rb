class Evaluation < ActiveRecord::Base
  belongs_to :contract
  belongs_to :evaluator, :class_name => "Employee"
end
