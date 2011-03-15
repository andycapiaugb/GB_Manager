class Employee < ActiveRecord::Base
  belongs_to :person
  has_many :contracts
  has_many :functions, :through => :contracts
end
