require 'rails_helper'

RSpec.describe "songs index page", type: :feature do
  describe "Asa a user" do
    describe "When I visit /songs" do
      it "I can see each songs title and play count" do

        artist = Artist.create!(name: "Carly")
        song_1 = Song.create!(title: "I Really Like You", length: 208, play_count: 123234, artist: artist)
        song_2 = Song.create!(title: "Call Me Maybe", length: 145, play_count: 786674, artist: artist)

        visit "/songs"
        save_and_open_page

        expect(page).to have_content(song_1.title)
        expect(page).to have_content("Play Count: #{song_1.play_count}")
      end
    end
  end
end
