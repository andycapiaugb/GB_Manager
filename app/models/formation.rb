class Formation < ActiveRecord::Base
  belongs_to :fiscal_year
  belongs_to :function
end
