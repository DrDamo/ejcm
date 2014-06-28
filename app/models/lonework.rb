class Lonework < ActiveRecord::Base

  hobo_model # Don't put anything above this

  fields do
    assessdate :date
    staff      :string
    needsupport :text
    violence :text
    violencerlc :integer
    violencerll :integer
    violencerr :integer
    hazardapplicant :text
    hazardapplicantrlc :integer
    hazardapplicantrll :integer
    hazardapplicantrr :integer
    hazardother :text
    hazardotherrlc :integer
    hazardotherrll :integer
    hazardotherrr :integer
    riskmeasures :text
    assessorsign :boolean
    managersign :boolean
    riskdate :date
    timestamps
  end
  attr_accessible :assessdate, :staff, :needsupport, :violence, :violencerlc, :violencerll, :violencerr, :hazardapplicant, :hazardapplicantrlc, :hazardapplicantrll, :hazardapplicantrr,
                  :hazardother, :hazardotherrlc, :hazardotherrll, :hazardotherrr, :riskmeasures, :assessorsign, :managersign, :riskdate

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
