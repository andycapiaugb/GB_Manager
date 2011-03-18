class CreateComputers < ActiveRecord::Migration
  def self.up
    create_table :computers do |t|
      t.integer :manufacturer_id
      t.integer :model_id
      t.boolean :bit64
      t.string :serial
      t.string :ip_address
      t.string :hostname
      t.string :dns
      t.string :gateway
      t.string :wins
      t.integer :operating_system_id
      t.integer :ram_capacity
      t.integer :hd_capacity
      t.integer :file_format_id
      t.integer :processor_id
      t.integer :processor_capacity
      t.boolean :cd
      t.boolean :dvd
      t.boolean :floppy
      t.integer :screen_id
      t.integer :software_installation_id

      t.timestamps
    end
  end

  def self.down
    drop_table :computers
  end
end
