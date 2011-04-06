class CreateAttachedCompetencies < ActiveRecord::Migration
  def self.up
    create_table :attached_competencies do |t|
      t.references :competencable, :polymorphic => true
      t.references :competency
      t.integer :level

      t.timestamps
    end
  end

  def self.down
    drop_table :attached_competencies
  end
end
