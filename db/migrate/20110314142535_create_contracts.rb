class CreateContracts < ActiveRecord::Migration
  def self.up
    create_table :contracts do |t|
      t.references :employee
      t.references :function
      t.string :number
      t.date :start
      t.date :end
      t.integer :place_id
      t.integer :performance
      t.integer :titular_id #references employee

      t.timestamps
    end
  end

  def self.down
    drop_table :contracts
  end
end
