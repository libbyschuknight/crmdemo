require "rails_helper"

RSpec.describe ApplicationHelper, "#gravatar_url" do
  it "display gravatar url by passing email in it" do
    lead = build(:lead)
    url = helper.gravatar_url(lead.email)

    expect(url).to eq "http://www.gravatar.com/avatar/f8fb533340e314935afe3a1d05a9070b?s=48"
  end
end