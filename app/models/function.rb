class Function < ActiveRecord::Base
  has_many :solicitations
  has_many :contracts
  has_many :employees, :through => :contracts
  has_many :formations
  has_many :fiscal_years, :through => :formations
  has_many :attached_competencies, :as => :competencable
  has_many :competencies, :through => :attached_competencies
end
