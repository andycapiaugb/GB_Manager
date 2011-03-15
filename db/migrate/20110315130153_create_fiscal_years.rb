class CreateFiscal_years < ActiveRecord::Migration
  def self.up
    create_table :fiscal_years do |t|
      t.references :organization
      t.integer :year

      t.timestamps
    end
  end

  def self.down
    drop_table :fiscal_years
  end
end
