require "rails_helper"

RSpec.describe LeadsController do
  describe "GET #show" do
    it "assigns the requested lead as @lead" do
      lead = create(:lead)

      get :show, { id: lead.to_param }

      expect(assigns(:lead)).to eq(lead)
    end
  end
end