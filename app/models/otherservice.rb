class Otherservice < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    othername    :string
    othercontact :text
    othercurrent :boolean
    timestamps
  end
  attr_accessible :othername, :othercontact, :othercurrent

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
