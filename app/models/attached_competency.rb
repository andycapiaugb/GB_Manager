class AttachedCompetency < ActiveRecord::Base
  belongs_to :competencable, :polymorphic => true
  belongs_to :competency
end
