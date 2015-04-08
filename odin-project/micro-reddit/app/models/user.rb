class User < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 50}
  validates :email, presence: true, length: {minimum: 5}
  has_many :posts
  has_many :comments
end
