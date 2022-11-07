class Page < ApplicationRecord
	validates :title, presence: true
	validates :bgColor, presence: true
	validates :fontColor, presence: true
	validates :fontStyle, presence: true
end
