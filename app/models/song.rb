class Song < ApplicationRecord
  belongs_to :artist, inverse_of: :songs
  validates_presence_of :artist

  validates :name, presence: true
end
