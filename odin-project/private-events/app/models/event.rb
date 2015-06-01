class Event < ActiveRecord::Base
  belongs_to :creator,   :class_name => "User"
  has_many   :invites,   :foreign_key => "attended_event_id"
  has_many   :attendees, :through => :invites

  validates :name,        presence: true
  validates :location,    presence: true
  validates :date,        presence: true
  validates :description, presence: true
end
