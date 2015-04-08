class Post < ActiveRecord::Base
  validates :title, presence: true, length: {maximum: 20}
  validates :body, presence: true, length: {maximum: 100}
  belongs_to :user
  has_many :comments
end
