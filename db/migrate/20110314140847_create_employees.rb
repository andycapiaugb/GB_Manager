class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.references :person
      t.integer :number
      t.boolean :resigned
      t.text :resigned_reason
      t.boolean :retired

      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
