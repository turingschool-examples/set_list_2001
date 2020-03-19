require 'rails_helper'

RSpec.describe "As a visitor" do
  it "I can destroy an artist " do
    carly_rae = Artist.create(name: "Carly Rae")
    bon_jovi = Artist.create(name: "Bon Jovi")

    visit '/artists'
    expect(page).to have_content(bon_jovi.name)

    visit "/artists/#{bon_jovi.id}"

    click_on "Delete"

    expect(current_path).to eq("/artists")
    expect(page).to_not have_content(bon_jovi.name)
    expect(page).to have_content(carly_rae.name)
  end
end

# And click a button 'Delete'
# Then I am redirected back to the artists index page
# And I no longer see that artist
