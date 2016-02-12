require "rails_helper"

RSpec.describe "POST /api/v1/leads" do
  it "create the lead" do
    lead_params = attributes_for(:lead)

    post "/api/v1/leads", lead: lead_params

    expect(response.status).to eq 201
    expect(Lead.last.company).to eq lead_params[:company]
    expect(Lead.last.email).to eq lead_params[:email]
  end
end