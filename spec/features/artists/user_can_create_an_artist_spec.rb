require 'rails_helper'


RSpec.describe "As a visitor" do
  it "I can create a new artist" do
    visit '/artists'

    click_on "New Artist"

    expect(current_path).to eq('/artists/new')

    fill_in :name, with: "Mike Dao"

    click_on "Create Artist"

    new_artist = Artist.last

    expect(current_path).to eq("/artists/#{new_artist.id}")
    expect(page).to have_content("Mike Dao")
    expect(new_artist.name).to eq("Mike Dao")
  end
end




# I am redirected to this new artists show page
