class CreateDiplomas < ActiveRecord::Migration
  def self.up
    create_table :diplomas do |t|
      t.references :diploma_degrees
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :diplomas
  end
end
