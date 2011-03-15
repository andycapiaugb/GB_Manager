class CreateFunctions < ActiveRecord::Migration
  def self.up
    create_table :functions do |t|
      t.string :name
      t.integer :formation_id
      t.integer :regulation_id
      t.integer :departnemt_id
      t.integer :level_id
      t.integer :category_id
      t.integer :performance
      t.date :start
      t.date :end
      t.boolean :fading

      t.timestamps
    end
  end

  def self.down
    drop_table :functions
  end
end
