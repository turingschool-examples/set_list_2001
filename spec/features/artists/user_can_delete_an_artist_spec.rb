require 'rails_helper'

RSpec.describe "As a visitor" do
  it "I can delete an artist from their show page " do
    carly_rae = Artist.create(name: "Carly Rae")
    bon_jovi = Artist.create(name: "Bon Jovi")

    visit "/artists/#{carly_rae.id}"

    click_button "Delete"

    expect(current_path).to eq("/artists")
    expect(page).to_not have_content("Carly Rae")
    expect(page).to have_content(bon_jovi.name)
  end
end
