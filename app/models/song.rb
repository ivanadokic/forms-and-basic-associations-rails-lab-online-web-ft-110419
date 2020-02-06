class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def genre_name=(genre_name)
    genre = Genre.find_or_create_by(name: genre_name)
    self.genre = genre
  end
end
