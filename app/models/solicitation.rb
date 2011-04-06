class Solicitation < ActiveRecord::Base
  belongs_to :person
  belongs_to :function
  belongs_to :diploma
  has_many :candidacies
  has_many :exams, :through => :candidacies
  has_many :attached_competencies, :as => :competencable
  has_many :competencies, :through => :attached_competencies
end
