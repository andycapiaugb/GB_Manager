class Competency < ActiveRecord::Base
  has_many :attached_competencies
  has_many :functions, :through => :function_competencies
end