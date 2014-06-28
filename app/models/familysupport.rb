class Familysupport < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    familyname    :string
    familycontact :text
    familycurrent :boolean
    timestamps
  end
  attr_accessible :familyname, :familycontact, :familycurrent

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
