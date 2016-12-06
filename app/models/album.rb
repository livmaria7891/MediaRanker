class Album < ActiveRecord::Base
  validates :title, presence: true
  validates :rank, presence: true

  # def self.order_by_rank(album,limit)
  #     raise
  #     album.order(rank: :desc).limit(limit)
  # end
  #
  # def self.upvote(album,rank)
  #
  # end
end
