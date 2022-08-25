require 'rails_helper'

RSpec.describe Artist do
  it {should have_many :songs}

describe 'instance methods' do
  describe '#average_song_length' do
    before :each do
      @prince = Artist.create!(name: 'Prince')
      @purple = @prince.songs.create!(title: 'Purple Rain', length: 234, play_count: 987644)
      @beret = @prince.songs.create!(title: 'Raspberry Beret', length: 875, play_count: 34578)
    end

    it 'returns the average song length' do
      expect(@prince.average_song_length).to eq(554.5)
    end
  end
end
end
