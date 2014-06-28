class Learning < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    startdate :date
    condition :string
    details   :text
    enddate   :date
    timestamps
  end
  attr_accessible :startdate, :condition, :details, :enddate

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
