require 'rails_helper'

RSpec.describe "as a visitor", type: :feature do
  it "can visit the songs index page and see songs titles and play count" do
    carly_rae = Artist.create(name: "Carly Rae")
    song_1 = Song.create(title: "I Really Like You",
                         length: 208,
                         play_count: 243810867,
                         artist_id: carly_rae.id)
    song_2 = carly_rae.songs.create(title: "Call Me Maybe",
                         length: 199,
                         play_count: 1214722172)

    visit "/songs"

    expect(page).to have_content(song_1.title)
    expect(page).to have_content("Play Count: #{song_1.play_count}")
    expect(page).to have_content(song_2.title)
    expect(page).to have_content("Play Count: #{song_2.play_count}")
  end
end


# class methods 
# - calling methods on a collection (collection could be any amount greater than 1)
#     - all of the songs
#     - all of carly rae's songs
#         - carly_rae.songs.average_length
#
# Instance methods
# - calling methods on one object
#   - artist method that you could call on artist to get back average playcount of all of their songs
#     - artist.avg_play_count_of_songs
