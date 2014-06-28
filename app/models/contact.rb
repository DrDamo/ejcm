class Contact < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    contacttype :string
    contactdate  :date
    contactdetails :text
    spnumber :integer
    staff :string
    timestamps
  end
  attr_accessible :contacttype, :contactdate, :contactdetails, :spnumber, :staff, :friend, :friend_id

  belongs_to :friend

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
