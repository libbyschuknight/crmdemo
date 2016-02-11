require "rails_helper"

feature "User create lead" do
  scenario "successfully" do
    visit root_path
    click_on "New Lead"
    fill_in "Company", with: "Acme Company"
    fill_in "Email", with: "john@acme.com"
    click_on "Submit"

    expect(page).to have_content "Lead was successfully created."
  end
end
