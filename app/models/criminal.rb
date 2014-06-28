class Criminal < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    startdate :date
    enddate   :date
    details   :text
    timestamps
  end
  attr_accessible :startdate, :enddate, :details

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
