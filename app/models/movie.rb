class Movie < ApplicationRecord
	validates :url, presence: true, :url => true
end