class Comment < ActiveRecord::Base
  validates :body, presence: true, length: {minimum: 20}
  validates :user, presence:true
  validates :post, presence:true
  belongs_to :user
  belongs_to :post
end
