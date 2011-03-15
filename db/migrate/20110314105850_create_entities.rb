class CreateEntities < ActiveRecord::Migration
  def self.up
    create_table :entities do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :website
      t.string :address
      t.string :kind #for example VZW, NV, BVBA, ...

      t.timestamps
    end
  end

  def self.down
    drop_table :entities
  end
end
