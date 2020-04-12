require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest


	def setup
		@movie = Movie.create(url: "Titanic")
	end


	test "should get movies index" do
		get movies_path
		assert_response :success
	end

	test "should get new" do
		get new_movie_path
		assert_response :success
	end


end