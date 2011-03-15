class CreateOrganizations < ActiveRecord::Migration
  def self.up
    create_table :organizations do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :website
      t.string :address
      t.string :postal_code
      t.string :town

      t.timestamps
    end
  end

  def self.down
    drop_table :organizations
  end
end
