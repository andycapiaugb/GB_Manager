class CreateSolicitations < ActiveRecord::Migration
  def self.up
    create_table :solicitations do |t|
      t.references :person
      t.date :date
      t.text :info
      t.references :diplomas

      t.timestamps
    end
  end

  def self.down
    drop_table :solicitations
  end
end
