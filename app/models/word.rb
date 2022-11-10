class Word < ApplicationRecord
  validates :title, presence: true
  validates :p1, presence: true, length: { minimum: 10 }
  validates :p2, presence: true, length: { minimum: 10 }
  validates :p3, presence: true, length: { minimum: 10 }
end
