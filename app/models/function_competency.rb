class FunctionCompetency < ActiveRecord::Base
  belongs_to :competency
  belongs_to :function
end
