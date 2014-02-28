class Story < ActiveRecord::Base
  validates :url, presence: true, uniqueness: true
  validates :user_id, presence: true

  belongs_to :user

end
