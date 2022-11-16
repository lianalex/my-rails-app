class Word < ApplicationRecord
  has_one_attached :image
  has_many :sections, dependent: :destroy
  
  validates :title, presence: true
end
