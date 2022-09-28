class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { maximum: 15, minimum: 5 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { maximum: 15, minimum: 5 }

  has_many :post
  has_many :comment
end
