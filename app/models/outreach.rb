class Outreach < ApplicationRecord
  belongs_to :lead

  def latest_outreach
    lead_id = Lead.id 
  end
end
