class Movie < ActiveRecord::Base
  searchkick
  validates :title,       presence: true
  validates :description, presence: true
  validates :length,      presence: true, numericality: true
  validates :director,    presence: true
  validates :rating,      presence: true
  validates :image,       :attachment_presence => true

  belongs_to :user
  has_many   :reviews, :dependent => :destroy

  has_attached_file :image, styles: { medium: "400x600#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
