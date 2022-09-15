class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 15, minumum: 5}, uniqueness: true
  validates :password, presence: true, length: {maximum: 15, minumum: 5}, uniqueness: true

  has_many :posts
  has_many :comments
end
