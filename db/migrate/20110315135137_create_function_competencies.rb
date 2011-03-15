class CreateFunctionCompetencies < ActiveRecord::Migration
  def self.up
    create_table :function_competencies do |t|
      t.references :competency
      t.references :function
      t.integer :level

      t.timestamps
    end
  end

  def self.down
    drop_table :function_competencies
  end
end
