class HoboMigration8 < ActiveRecord::Migration
  def self.up
    add_column :referrals, :physicalhealth, :boolean
    add_column :referrals, :learningdisability, :boolean
    add_column :referrals, :mentalhealth, :boolean
    add_column :referrals, :criminalconviction, :boolean
    add_column :referrals, :social, :boolean
    add_column :referrals, :yot, :boolean
    add_column :referrals, :otherservice, :boolean
    add_column :referrals, :familysupport, :boolean
    add_column :referrals, :friendsupport, :boolean
    add_column :referrals, :othersupport, :boolean
  end

  def self.down
    remove_column :referrals, :physicalhealth
    remove_column :referrals, :learningdisability
    remove_column :referrals, :mentalhealth
    remove_column :referrals, :criminalconviction
    remove_column :referrals, :social
    remove_column :referrals, :yot
    remove_column :referrals, :otherservice
    remove_column :referrals, :familysupport
    remove_column :referrals, :friendsupport
    remove_column :referrals, :othersupport
  end
end
