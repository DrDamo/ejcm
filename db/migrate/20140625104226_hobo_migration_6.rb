class HoboMigration6 < ActiveRecord::Migration
  def self.up
    add_column :loneworks, :needsupport, :text
    add_column :loneworks, :violence, :text
    add_column :loneworks, :violencerlc, :integer
    add_column :loneworks, :violencerll, :integer
    add_column :loneworks, :violencerr, :integer
    add_column :loneworks, :hazardapplicant, :text
    add_column :loneworks, :hazardapplicantrlc, :integer
    add_column :loneworks, :hazardapplicantrll, :integer
    add_column :loneworks, :hazardapplicantrr, :integer
    add_column :loneworks, :hazardother, :text
    add_column :loneworks, :hazardotherrlc, :integer
    add_column :loneworks, :hazardotherrll, :integer
    add_column :loneworks, :hazardotherrr, :integer
    add_column :loneworks, :riskmeasures, :text
    add_column :loneworks, :assessorsign, :boolean
    add_column :loneworks, :managersign, :boolean
    add_column :loneworks, :riskdate, :date

    add_column :referrals, :referrerposition, :string
    add_column :referrals, :refcontacts, :text
    add_column :referrals, :refreason, :text
    add_column :referrals, :clientaware, :boolean
    add_column :referrals, :status, :string
    add_column :referrals, :immigrationstatus, :text
    add_column :referrals, :otherinfo, :text

    add_column :spreviews, :ifnotwhy, :text

    add_column :supportplans, :fullentry, :boolean
    add_column :supportplans, :planreviewdate, :date
    add_column :supportplans, :staff, :string
    add_column :supportplans, :otherspresent, :string
    add_column :supportplans, :goal, :text
    add_column :supportplans, :comments, :text
    add_column :supportplans, :need1, :text
    add_column :supportplans, :need1date, :date
    add_column :supportplans, :need2, :text
    add_column :supportplans, :need2date, :date
    add_column :supportplans, :need3, :text
    add_column :supportplans, :need3date, :date
    add_column :supportplans, :support1, :text
    add_column :supportplans, :support1date, :date
    add_column :supportplans, :support2, :text
    add_column :supportplans, :support2date, :date
    add_column :supportplans, :support3, :text
    add_column :supportplans, :support3date, :date
    add_column :supportplans, :Clientsign, :string
    add_column :supportplans, :staffsign, :string
    add_column :supportplans, :attachment, :boolean
  end

  def self.down
    remove_column :loneworks, :needsupport
    remove_column :loneworks, :violence
    remove_column :loneworks, :violencerlc
    remove_column :loneworks, :violencerll
    remove_column :loneworks, :violencerr
    remove_column :loneworks, :hazardapplicant
    remove_column :loneworks, :hazardapplicantrlc
    remove_column :loneworks, :hazardapplicantrll
    remove_column :loneworks, :hazardapplicantrr
    remove_column :loneworks, :hazardother
    remove_column :loneworks, :hazardotherrlc
    remove_column :loneworks, :hazardotherrll
    remove_column :loneworks, :hazardotherrr
    remove_column :loneworks, :riskmeasures
    remove_column :loneworks, :assessorsign
    remove_column :loneworks, :managersign
    remove_column :loneworks, :riskdate

    remove_column :referrals, :referrerposition
    remove_column :referrals, :refcontacts
    remove_column :referrals, :refreason
    remove_column :referrals, :clientaware
    remove_column :referrals, :status
    remove_column :referrals, :immigrationstatus
    remove_column :referrals, :otherinfo

    remove_column :spreviews, :ifnotwhy

    remove_column :supportplans, :fullentry
    remove_column :supportplans, :planreviewdate
    remove_column :supportplans, :staff
    remove_column :supportplans, :otherspresent
    remove_column :supportplans, :goal
    remove_column :supportplans, :comments
    remove_column :supportplans, :need1
    remove_column :supportplans, :need1date
    remove_column :supportplans, :need2
    remove_column :supportplans, :need2date
    remove_column :supportplans, :need3
    remove_column :supportplans, :need3date
    remove_column :supportplans, :support1
    remove_column :supportplans, :support1date
    remove_column :supportplans, :support2
    remove_column :supportplans, :support2date
    remove_column :supportplans, :support3
    remove_column :supportplans, :support3date
    remove_column :supportplans, :Clientsign
    remove_column :supportplans, :staffsign
    remove_column :supportplans, :attachment
  end
end
