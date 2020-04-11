require 'test_helper'

class MovieTest < ActiveSupport::TestCase

	def setup
		@movie = Movie.new(url: "Titanic")
	end

	test 'movie should be valid' do 
		assert @movie.valid?
	end

	test "movie should be present" do
		@movie.url = " "
		assert_not @movie.valid?
	end
end
