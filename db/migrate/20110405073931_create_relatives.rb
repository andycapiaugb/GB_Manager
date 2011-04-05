class CreateRelatives < ActiveRecord::Migration
  def self.up
    create_table :relatives do |t|
      t.integer :relator_id
      t.integer :related_id
      t.string :kind
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :relatives
  end
end
