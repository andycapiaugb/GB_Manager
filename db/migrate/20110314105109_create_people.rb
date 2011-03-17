class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.string :phone
      t.string :email
      t.string :address
      t.string :postal_code
      t.string :town
      t.string :national_number
      t.string :account
      t.string :nationality
      t.string :birthplace
      t.date :birthday
      t.string :civil_status
      t.text :info

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
