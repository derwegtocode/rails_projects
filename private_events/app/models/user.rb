class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true
  validates :username, uniqueness: true

  has_many :events, foreign_key: "creator_id"
  has_many :events_attendance
  has_many :attended_events, through: :events_attendance, source: :event

end
