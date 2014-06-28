class Spreview < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    reviewdate :date
    spmet      :string
    ifnotwhy   :text
    timestamps
  end
  attr_accessible :reviewdate, :spmet, :ifnotwhy

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
