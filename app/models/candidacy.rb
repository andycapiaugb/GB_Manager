class Candidacy < ActiveRecord::Base
  belongs_to :solicitation
  belongs_to :exam
end
