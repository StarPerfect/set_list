class Artist < ApplicationRecord
  has_many :songs

  validates_presence_of :name

  def average_play_count
    self.songs.average(:play_count)
    # OR below - note the above is prefered over the below
    # play_count_sum = self.songs.sum do |song|
    #   song.play_count
    # end
    # play_count_sum/self.songs.count
  end
end
