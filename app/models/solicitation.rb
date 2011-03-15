class Solicitation < ActiveRecord::Base
  belongs_to :person
  has_many :candidacies
  has_many :exams, :through => :candidacies
end
