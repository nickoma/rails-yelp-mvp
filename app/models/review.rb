class Review < ApplicationRecord
  belongs_to :restaurant
  # validates :name, uniqueness: true, presence: true
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  # validates :restaurant, uniqueness: true, presence: true
end
