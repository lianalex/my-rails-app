class Word < ApplicationRecord
  has_one_attached :image
  validates :title, presence: true
  validates :p1, presence: true, length: { minimum: 10 }
  validate :subtitle1
  validates :p2, presence: true, length: { minimum: 10 }
  validate :subtitle2
  validates :p3, presence: true, length: { minimum: 10 }
end
