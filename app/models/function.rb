class Function < ActiveRecord::Base
  has_many :contracts
  has_many :employees, :through => :contracts
end
