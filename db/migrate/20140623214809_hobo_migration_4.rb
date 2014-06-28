class HoboMigration4 < ActiveRecord::Migration
  def self.up
    create_table :loneworks do |t|
      t.date     :assessdate
      t.string   :staff
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :referrals do |t|
      t.date     :refdate
      t.string   :referrer
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :spreviews do |t|
      t.date     :reviewdate
      t.string   :spmet
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :supportplans do |t|
      t.integer  :plannumber
      t.date     :plandate
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :loneworks
    drop_table :referrals
    drop_table :spreviews
    drop_table :supportplans
  end
end
