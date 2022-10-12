class Kitten < ApplicationRecord
  validates :age, numericality: { only_integer: true }, presence: true
  validates :name, presence: true, uniqueness: true
end
