class HoboMigration7 < ActiveRecord::Migration
  def self.up
    create_table :otherinfos do |t|
      t.date     :otherinfodate
      t.text     :otherinfotext
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :friendsupports do |t|
      t.string   :friendname
      t.text     :friendcontact
      t.boolean  :frientcurrent
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :familysupports do |t|
      t.string   :familyname
      t.text     :familycontact
      t.boolean  :familycurrent
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :otherservices do |t|
      t.string   :othername
      t.text     :othercontact
      t.boolean  :othercurrent
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :othersupports do |t|
      t.string   :othername
      t.text     :othercontact
      t.boolean  :othercurrent
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :mentals do |t|
      t.date     :startdate
      t.string   :condition
      t.text     :details
      t.date     :enddate
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :nextofkins do |t|
      t.string   :nokname
      t.string   :nokrelationship
      t.text     :nokaddress
      t.string   :noktel
      t.string   :nokmobile
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :yots do |t|
      t.string   :yotname
      t.text     :yotcontact
      t.boolean  :yotcurrent
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :learnings do |t|
      t.date     :startdate
      t.string   :condition
      t.text     :details
      t.date     :enddate
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :socials do |t|
      t.string   :ssname
      t.text     :sscontact
      t.boolean  :sscurent
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :criminals do |t|
      t.date     :startdate
      t.date     :enddate
      t.text     :details
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :owngps do |t|
      t.string   :gpname
      t.string   :surgeryname
      t.text     :surgeryaddress
      t.string   :surgerytel
      t.boolean  :current
      t.datetime :created_at
      t.datetime :updated_at
    end

    create_table :physicals do |t|
      t.date     :startdate
      t.string   :condition
      t.text     :details
      t.date     :enddate
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :otherinfos
    drop_table :friendsupports
    drop_table :familysupports
    drop_table :otherservices
    drop_table :othersupports
    drop_table :mentals
    drop_table :nextofkins
    drop_table :yots
    drop_table :learnings
    drop_table :socials
    drop_table :criminals
    drop_table :owngps
    drop_table :physicals
  end
end
