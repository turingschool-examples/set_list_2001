require 'rails_helper'


RSpec.describe Song, type: :model do
  describe 'validations' do
    it {should validate_presence_of :title}
    it {should validate_presence_of :play_count}
    it {should validate_presence_of :length}
  end
  describe 'relationships' do
    it {should belong_to :artist}
    it { should have_many :playlist_songs}
    it { should have_many(:playlists).through(:playlist_songs)}
  end
  describe 'class methods' do
   it '.song_count' do
     prince = Artist.create!(name: 'Prince')
     carly_rae = Artist.create!(name: 'Carly Rae')
     rasperry_beret = prince.songs.create!(title: 'Raspberry Beret', length: 234, play_count: 34)
     really_like_you = Song.create(title: "I Really Like You",
                          length: 208,
                          play_count: 243810867,
                          artist_id: carly_rae.id)
     call_me = carly_rae.songs.create(title: "Call Me Maybe",
                          length: 199,
                          play_count: 1214722172)

     expect(Song.song_count).to eq(3)
     expect(carly_rae.songs.song_count).to eq(2)
     expect(prince.songs.song_count).to eq(1)
   end
 end
end
# model testing - Testing Resources (song table, attributes in a table, def test it exists)

# model testing
#  - validations (checking for attributes)
#  - relationships (ex: song belong to an artist, artist have many songs)
#  - model methods

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
