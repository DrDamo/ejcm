class Friend < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    forename :string
    othernames :string
    surname  :string
    address1 :string
    address2 :string
    city :string
    county :string
    postcode :string
    homephone :string
    mobile :string
    workphone :string
    dateofbirth :date
    ethnicity :string
    mainlanguage :string
    religion :string
    timestamps
  end
  attr_accessible :forename, :othernames, :surname, :address1, :address2, :city, :county, :postcode, :homephone, :mobile, :workphone, :dateofbirth, :ethnicity, :mainlanguage, :religion, :contact, :contact_id

  has_many :contacts

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
