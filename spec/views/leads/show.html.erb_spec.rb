require "rails_helper"

RSpec.describe "leads/show.html.erb" do
  context "if email is not null" do
    it "display mailto link" do
      lead = build(:lead)
      assign(:lead, lead)

      render

      expect(rendered).to have_selector "a[href='mailto:#{lead.email}']"
    end
  end
end