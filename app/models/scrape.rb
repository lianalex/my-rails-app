class Scrape < ApplicationRecord

	has_many :books, dependent: :destroy
	
	validates :title, presence: true
	validates :targetURL, presence: true
end
