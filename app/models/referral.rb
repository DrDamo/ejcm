class Referral < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    refdate  :date
    referrer :string
    referrerposition :string
    refcontacts :text
    refreason :text
    clientaware :boolean
    status :string
    immigrationstatus :text
    physicalhealth :boolean
    learningdisability :boolean
    mentalhealth :boolean
    criminalconviction :boolean
    social :boolean
    yot :boolean
    otherservice :boolean
    familysupport :boolean
    friendsupport :boolean
    othersupport :boolean
    timestamps
  end
  attr_accessible :refdate, :referrer, :referrerposition, :refcontacts, :refreason, :clientaware, :status, :immigrationstatus, :physicalhealth, :learningdisability,
                  :mentalhealth, :criminalconviction, :social, :yot, :otherservice, :familysupport, :friendsupport, :othersupport

  # has_many :physicals :learnings :mentals :owngps :socials :yots :otherservices :friendsupports :nextofkins :othersupports

  # --- Permissions --- #

  def create_permitted?
    acting_user.administrator?
  end

  def update_permitted?
    acting_user.administrator?
  end

  def destroy_permitted?
    acting_user.administrator?
  end

  def view_permitted?(field)
    true
  end

end
