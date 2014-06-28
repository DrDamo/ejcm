class HoboMigration9 < ActiveRecord::Migration
  def self.up
    remove_column :referrals, :otherinfo
  end

  def self.down
    add_column :referrals, :otherinfo, :text
  end
end
