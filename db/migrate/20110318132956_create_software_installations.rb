class CreateSoftwareInstallations < ActiveRecord::Migration
  def self.up
    create_table :software_installations do |t|
      t.date :date

      t.timestamps
    end
  end

  def self.down
    drop_table :software_installations
  end
end
