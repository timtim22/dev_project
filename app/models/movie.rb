class Movie < ApplicationRecord
	validates :url, presence: true, :url => true
	belongs_to :user
end