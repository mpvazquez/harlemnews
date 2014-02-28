class User < ActiveRecord::Base
  has_secure_password

  has_many :stories
  has_many :votes
  has_many :scores, through: :votes, source: :stories
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true

end