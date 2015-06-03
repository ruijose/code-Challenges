class Movie < ActiveRecord::Base
  validates :title,       presence: true
  validates :description, presence: true
  validates :length,      presence: true, numericality: true
  validates :director,    presence: true
  validates :rating,      presence: true

  belongs_to :user
end
