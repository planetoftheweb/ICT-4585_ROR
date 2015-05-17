class Album < ActiveRecord::Base
  belongs_to :label
  has_and_belongs_to_many :artist
  validates :album_title, presence: true
  validates :genre, presence: true
  validates :year_released, presence: true
  validates :times_played, presence: true
end
