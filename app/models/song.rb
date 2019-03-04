class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    drake = Artist.create(name: "Drake")#create drake as an artist
    self.artist = drake #  assign the song's artist to Drake
  end
end
