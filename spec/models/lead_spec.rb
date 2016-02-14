require 'rails_helper'

RSpec.describe Lead, ".active" do
  it "return only active lead" do
    active_lead = create(:lead, active: true)
    non_active_lead = create(:lead, active: false)

    result = Lead.active

    expect(result).to eq [active_lead]
  end
end