class Yot < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    yotname    :string
    yotcontact :text
    yotcurrent :boolean
    timestamps
  end
  attr_accessible :yotname, :yotcontact, :yotcurrent

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
