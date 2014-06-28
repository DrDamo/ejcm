class Friendsupport < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    friendname    :string
    friendcontact :text
    frientcurrent :boolean
    timestamps
  end
  attr_accessible :friendname, :friendcontact, :frientcurrent

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
