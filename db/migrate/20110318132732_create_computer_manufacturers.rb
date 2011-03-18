class CreateComputerManufacturers < ActiveRecord::Migration
  def self.up
    create_table :computer_manufacturers do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :computer_manufacturers
  end
end
