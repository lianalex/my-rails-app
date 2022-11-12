class Word < ApplicationRecord
  has_one_attached :image
  validates :title, presence: true
  validates :p1, presence: true, length: { minimum: 10 }
  validates :subtitle1, presence: true
  validates :p2, presence: true, length: { minimum: 10 }
  validates :subtitle2, presence: true
  validates :p3, presence: true, length: { minimum: 10 }
end
