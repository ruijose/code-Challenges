class Post < ActiveRecord::Base
  validates :title, presence: true, length: {maximum: 20}
  validates :body, presence: true, length: {maximum: 100}
  validates :user, presence: true
  belongs_to :user
  has_many :comments
end
