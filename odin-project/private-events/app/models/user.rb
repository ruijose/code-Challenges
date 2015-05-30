class User < ActiveRecord::Base
  has_many :created_events, :foreign_key => "creator_id", :class_name => "Event"
  has_many :invites,        :foreign_key => "attendee_id"
  has_many :attended_events, through: :invites

  def attend(event)
    self.invites.create(:attended_event_id => event.id) if !event.attendees.include?(self)
  end
end
