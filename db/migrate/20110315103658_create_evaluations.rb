class CreateEvaluations < ActiveRecord::Migration
  def self.up
    create_table :evaluations do |t|
      t.references :contract
      t.integer :evaluator_id
      t.date :date
      t.string :result
      t.text :info

      t.timestamps
    end
  end

  def self.down
    drop_table :evaluations
  end
end
