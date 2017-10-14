require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it "is invalid without name" do
      artist = Artist.new(name: "")
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end

    it "is invalid without genre" do
      artist = Artist.new(genre: "")
      artist.valid?
      expect(artist.errors).to have_key(:genre)
    end
  end

  describe "association with song" do
    let!(:artist) { create :artist }
    let!(:song) { create :song, artist: artist}

    it { is_expected.to have_many :songs }

    it "deletes associated rooms" do
      expect { artist.destroy }.to change(Song, :count).by(-1)
    end
  end
end
