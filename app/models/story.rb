class Story < ActiveRecord::Base
  validates :url, presence: true, uniqueness: true
  validates :user_id, presence: true

  belongs_to :user
  has_many :votes
  has_many :voters, through: :votes, source: :users

end
