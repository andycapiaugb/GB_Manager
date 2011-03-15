class Exam < ActiveRecord::Base
  belongs_to :function
  has_many :candidacies
  has_many :solicitations, :through => :candidacies
end
