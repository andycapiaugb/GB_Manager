class CreateIrregularPerformances < ActiveRecord::Migration
  def self.up
    create_table :irregular_performances do |t|
      t.references :employee
      t.integer :event_id
      t.date :date
      t.string :description
      t.time :start
      t.time :end
      t.text :info

      t.timestamps
    end
  end

  def self.down
    drop_table :irregular_performances
  end
end
