class Evaluation < ActiveRecord::Base
  belongs_to :contract
  belongs_to :evaluator, :class_name => "Employee"
  has_many :attached_competencies, :as => :competencable
  has_many :competencies, :through => :attached_competencies
end
