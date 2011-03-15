class FiscalYear < ActiveRecord::Base
  belongs_to :organization
  has_many :formations
end
