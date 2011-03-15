class CreateEvaluationCompetencies < ActiveRecord::Migration
  def self.up
    create_table :evaluation_competencies do |t|
      t.references :competency
      t.references :evaluation
      t.integer :level

      t.timestamps
    end
  end

  def self.down
    drop_table :evaluation_competencies
  end
end
