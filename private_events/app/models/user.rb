class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true
  validates :username, uniqueness: true

  has_many :created_events, foreign_key: :creator_id, class_name: "Event"
  has_many :events_attendance, foreign_key: :event_attendee_id
  has_many :attended_events, through: :created_events

end
