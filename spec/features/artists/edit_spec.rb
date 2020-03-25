require 'rails_helper'


RSpec.describe "As a visitor" do
  it "I can update an existing artist" do
    carly_rae = Artist.create(name: "Carly Rae")

    visit "/artists/#{carly_rae.id}"

    click_on "Edit"

    expect(current_path).to eq("/artists/#{carly_rae.id}/edit")

    fill_in :name, with: "Mike Dao"

    click_on "Update Artist"

    expect(current_path).to eq("/artists/#{carly_rae.id}")
    expect(page).to have_content("Mike Dao")
    expect(page).to_not have_content("Carly Rae")
    carly_rae.reload
    expect(carly_rae.name).to eq("Mike Dao")
  end
end
