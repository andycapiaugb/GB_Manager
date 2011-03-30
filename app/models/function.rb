class Function < ActiveRecord::Base
  has_many :solicitations
  has_many :contracts
  has_many :employees, :through => :contracts
  has_many :formations
  has_many :fiscal_years, :through => :formations
  has_many :function_competencies
  has_many :competencies, :through => :function_competencies
end
