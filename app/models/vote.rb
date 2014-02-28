class Vote < ActiveRecord::Base
  validates :user_id, presence: true
  validates :story_id, presence: true
  validates :score, numericality: {greater_than: -2, less_than: 2}
  validates :user_id, uniqueness: {scope: :story_id}
  belongs_to :story
  belongs_to :user
end
