class CreateEmployments < ActiveRecord::Migration
  def self.up
    create_table :employments do |t|
      t.references :person
      t.references :entity
      t.string :function
      t.date :joined
      t.date :resigned
      t.string :phone
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :employments
  end
end
