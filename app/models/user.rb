class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
  # nice use of validations!
  has_secure_password
  has_many :posts
end
