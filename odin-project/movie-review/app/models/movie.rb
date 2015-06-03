class Movie < ActiveRecord::Base
  validates :title,       presence: true
  validates :description, presence: true
  validates :length,      presence: true, numericality: true
  validates :director,    presence: true
  validates :rating,      presence: true

  belongs_to :user

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
