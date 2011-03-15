class CreateAccidents < ActiveRecord::Migration
  def self.up
    create_table :accidents do |t|
      t.references :employee
      t.date :date
      t.text :description
      t.integer :invalidity
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :accidents
  end
end
