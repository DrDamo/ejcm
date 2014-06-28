class Nextofkin < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    nokname         :string
    nokrelationship :string
    nokaddress      :text
    noktel          :string
    nokmobile       :string
    timestamps
  end
  attr_accessible :nokname, :nokrelationship, :nokaddress, :noktel, :nokmobile

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
