class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie
  validates  :rating, :inclusion => 1..5
  validates  :comment, presence: true
end

