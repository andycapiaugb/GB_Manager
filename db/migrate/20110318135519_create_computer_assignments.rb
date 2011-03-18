class CreateComputerAssignments < ActiveRecord::Migration
  def self.up
    create_table :computer_assignments do |t|
      t.references :employee
      t.references :computer
      t.date :date
      t.text :info

      t.timestamps
    end
  end

  def self.down
    drop_table :computer_assignments
  end
end
