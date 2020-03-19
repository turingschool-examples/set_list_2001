require 'rails_helper'

RSpec.describe "As a visitor when I visit '/artists'", type: :feature do
  it "I see a list of all artist names" do
    carly_rae = Artist.create(name: "Carly Rae")
    bon_jovi = Artist.create(name: "Bon Jovi")

    visit '/artists'

    expect(page).to have_content(carly_rae.name)
    expect(page).to have_content(bon_jovi.name)
  end
end

#
# As a visitor
# When I visit ‘/artists’
# I see a list of all artist names
