class Competency < ActiveRecord::Base
  has_many :function_competencies
  has_many :functions, :through => :function_competencies
end
