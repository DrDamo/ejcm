class HoboMigration2 < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.datetime :date
      t.string   :staff
      t.text     :notes
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :contacts
  end
end
