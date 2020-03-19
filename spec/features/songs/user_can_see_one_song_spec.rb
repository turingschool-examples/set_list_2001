require 'rails_helper'

RSpec.describe "As a visitor", type: :feature do
  it "I see that song's title and artist name, and no other songs from my database" do
    carly_rae = Artist.create(name: "Carly Rae")
    song_1 = Song.create(title: "I Really Like You",
                         length: 208,
                         play_count: 243810867,
                         artist_id: carly_rae.id)
    song_2 = carly_rae.songs.create(title: "Call Me Maybe",
                         length: 199,
                         play_count: 1214722172)

    visit "/songs/#{song_1.id}"

    expect(page).to have_content(song_1.title)
    expect(page).to have_content(carly_rae.name)
    expect(page).to_not have_content(song_2.title)
  end
end
