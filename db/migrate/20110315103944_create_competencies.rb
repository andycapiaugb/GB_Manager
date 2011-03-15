class CreateCompetencies < ActiveRecord::Migration
  def self.up
    create_table :competencies do |t|
      t.integer :group_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :competencies
  end
end
