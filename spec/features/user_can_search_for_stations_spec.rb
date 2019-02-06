require 'rails_helper'

feature "User visits root" do
  scenario "searches for stations" do
    visit "/"
    # When I visit "/"
    fill_in "q", with: "80203"
    # And I fill in the search form with 80203 (Note: Use the existing search form)
    click_on "Locate"
    # And I click "Locate"
    expect(current_path).to eq(search_path)
    # Then I should be on page "/search"
    expect(page).to have_content("10 Closest Stations")
    # Then I should see a list of the 10 closest stations within 6 miles sorted by distance
    # And the stations should be limited to Electric and Propane
    # And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times

  end
end