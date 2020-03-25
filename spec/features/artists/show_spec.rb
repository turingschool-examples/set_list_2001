require 'rails_helper'

RSpec.describe "As a visitor when i visit an artists show page", type: :feature do
  it "I see that artists name and no other name" do
    carly_rae = Artist.create(name: "Carly Rae")
    bon_jovi = Artist.create(name: "Bon Jovi")

    visit "/artists/#{carly_rae.id}"

    expect(page).to have_content(carly_rae.name)
    expect(page).to_not have_content(bon_jovi.name)
  end
end
