class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :friends do |t|
      t.string   :forename
      t.string   :surname
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :friends
  end
end
