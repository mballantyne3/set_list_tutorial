require 'rails_helper'

RSpec.describe 'the songs show page' do
  it 'displays the song title' do
    artist = Artist.create(name: 'Carly Rae Jepsen')
    song = artist.songs.create!(title: "I really Like You", length: 208, play_count: 234)
    song_2 = artist.songs.create!(title: "Call Me Maybe", length: 111, play_count: 400)
    visit "/songs/#{song.id}"

    expect(page).to have_content(song.title)
  end

  xit 'displays the name of the artist who wrote the song' do

  end

  describe 'as a user' do
    describe 'when I visit a song show page' do
      it 'I see a link back to the songs' do
        artist = Artist.create(name: 'Carly Rae Jepsen')
        song_1 = artist.songs.create!(title: "I really Like You", length: 208, play_count: 234)
        song_2 = artist.songs.create!(title: "Call Me Maybe", length: 111, play_count: 400)

        visit "/songs/#{song_1.id}"

        expect(page).to have_link("Back to Songs Index")
      end
    end
  end
end
