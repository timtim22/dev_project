class Movie < ApplicationRecord
	validates :url, presence: true
end