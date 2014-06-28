class Supportplan < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    fullentry :boolean
    plannumber :integer
    plandate   :date
    planreviewdate :date
    staff :string
    otherspresent :string
    goal :text
    comments :text
    need1 :text
    need1date :date
    need2 :text
    need2date :date
    need3 :text
    need3date :date
    support1 :text
    support1date :date
    support2 :text
    support2date :date
    support3 :text
    support3date :date
    Clientsign :boolean
    staffsign :boolean
    attachment :boolean
    timestamps
  end
  attr_accessible :plannumber, :plandate, :planreviewdate, :staff, :otherspresent, :goal, :comments, :need1, :need1date, :need2, :need2date, :need3, :need3date,
                  :support1, :support1date, :support2, :support2date, :support3, :support3date, :Clientsign, :staffsign, :attachment


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
