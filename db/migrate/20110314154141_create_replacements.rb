class CreateReplacements < ActiveRecord::Migration
  def self.up
    create_table :replacements do |t|
      t.integer :replacer_id
      t.integer :replaced_id

      t.timestamps
    end
  end

  def self.down
    drop_table :replacements
  end
end
