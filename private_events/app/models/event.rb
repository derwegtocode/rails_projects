class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :events_attendance, foreign_key: :attended_event
  has_many :attendees, through: :events_attendees, source: :event_attendee

  validates :title, presence: true
  validates :location, presence: true
  validates :date, presence: true
end
