class Event < ApplicationRecord
  belongs_to :creator, foreign_key: "creator_id", class_name: "User"
  has_many :events_attendance
  has_many :attendees, through: :events_attendance, source: :user

  scope :upcoming_events, -> { where('date > ?', Time.now) }
  scope :past_events, -> { where('date < ?', Time.now) }

  validates :title, presence: true
  validates :location, presence: true
  validates :date, presence: true
end
