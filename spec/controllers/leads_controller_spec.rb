require "rails_helper"

RSpec.describe LeadsController do
  describe "GET #show" do
    it "assigns the requested lead as @lead" do
      lead = create(:lead)

      get :show, { id: lead.to_param }

      expect(assigns(:lead)).to eq(lead)
    end
  end

  describe "POST #create" do
    context "when lead is invalid" do
      it "re-renders the form" do
        invalid_lead = double(save: false)
        allow(Lead).to receive(:new).and_return(invalid_lead)

        post :create, lead: { attribute: "value" }

        expect(response).to render_template :new
      end
    end
  end
end