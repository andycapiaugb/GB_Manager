class CreateCandidacies < ActiveRecord::Migration
  def self.up
    create_table :candidacies do |t|
      t.references :solicitation
      t.references :exam
      t.date :date
      t.text :results
      t.boolean :passed
      t.text :info

      t.timestamps
    end
  end

  def self.down
    drop_table :candidacies
  end
end
