require 'rails_helper'

RSpec.describe "As a visitor when I visit '/artists'", type: :feature do
  before(:each) do
    @carly_rae = Artist.create(name: "Carly Rae")
    @bon_jovi = Artist.create(name: "Bon Jovi")

    visit '/artists'
  end

  it "I see a list of all artist names in alphabetical order" do
    expect(page.all('#artist-*')[0]).to have_content(@bon_jovi.name)
    expect(page.all('#artist-*')[1]).to have_content(@carly_rae.name)

    within '.artist-names-list' do
      within "#artist-#{@carly_rae.id}" do
        expect(page).to have_content(@carly_rae.name)
        expect(page).to_not have_content(@bon_jovi.name)
      end
      within "#artist-#{@bon_jovi.id}" do
        expect(page).to have_content(@bon_jovi.name)
      end
    end
  end

  it "I can delete any artist from the artists index page" do
    within "#artist-#{@carly_rae.id}" do
      click_link "Delete"
    end

    expect(current_path).to eq('/artists')
    expect(page).to_not have_content(@carly_rae.name)
  end
end

#
# As a visitor
# When I visit ‘/artists’
# I see a list of all artist names
