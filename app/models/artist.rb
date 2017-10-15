class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :photos, dependent: :destroy
  accepts_nested_attributes_for :songs, allow_destroy: true

  validates :name, presence: true
  validates :genre, presence: true
end
