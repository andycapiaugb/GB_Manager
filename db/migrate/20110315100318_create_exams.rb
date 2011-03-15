class CreateExams < ActiveRecord::Migration
  def self.up
    create_table :exams do |t|
      t.references :function
      t.date :date
      t.text :results
      t.text :info

      t.timestamps
    end
  end

  def self.down
    drop_table :exams
  end
end
