class FiscalYear < ActiveRecord::Base
  belongs_to :organization
  has_many :formations
  has_many :functions, :through => :formations
end
