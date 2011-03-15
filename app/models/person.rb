class Person < ActiveRecord::Base
  has_one :employee
  has_many :employments
  has_many :entities, :through => :employments
  has_many :solicitations
end
