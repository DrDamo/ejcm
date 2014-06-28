class Owngp < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    gpname         :string
    surgeryname    :string
    surgeryaddress :text
    surgerytel     :string
    current        :boolean
    timestamps
  end
  attr_accessible :gpname, :surgeryname, :surgeryaddress, :surgerytel, :current

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
