class HoboMigration3 < ActiveRecord::Migration
  def self.up
    add_column :friends, :othernames, :string
    add_column :friends, :address1, :string
    add_column :friends, :address2, :string
    add_column :friends, :city, :string
    add_column :friends, :county, :string
    add_column :friends, :postcode, :string
    add_column :friends, :homephone, :string
    add_column :friends, :mobile, :string
    add_column :friends, :workphone, :string
    add_column :friends, :dateofbirth, :date
    add_column :friends, :ethnicity, :string
    add_column :friends, :mainlanguage, :string
    add_column :friends, :religion, :string

    add_column :contacts, :contacttype, :string
    add_column :contacts, :contactdate, :date
    add_column :contacts, :contactdetails, :text
    add_column :contacts, :spnumber, :integer
    remove_column :contacts, :date
    remove_column :contacts, :notes
  end

  def self.down
    remove_column :friends, :othernames
    remove_column :friends, :address1
    remove_column :friends, :address2
    remove_column :friends, :city
    remove_column :friends, :county
    remove_column :friends, :postcode
    remove_column :friends, :homephone
    remove_column :friends, :mobile
    remove_column :friends, :workphone
    remove_column :friends, :dateofbirth
    remove_column :friends, :ethnicity
    remove_column :friends, :mainlanguage
    remove_column :friends, :religion

    remove_column :contacts, :contacttype
    remove_column :contacts, :contactdate
    remove_column :contacts, :contactdetails
    remove_column :contacts, :spnumber
    add_column :contacts, :date, :datetime
    add_column :contacts, :notes, :text
  end
end
