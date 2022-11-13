class Product < ApplicationRecord

	validates :title, presence: true
	validates :htmlID, presence: true
	validates :cssID, presence: true
	
end
