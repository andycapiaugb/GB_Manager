class CreateFormations < ActiveRecord::Migration
  def self.up
    create_table :formations do |t|
      t.references :fiscal_year
      t.references :function

      t.timestamps
    end
  end

  def self.down
    drop_table :formations
  end
end
