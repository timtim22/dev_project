require 'test_helper'


class CreateMoviesTest < ActionDispatch::IntegrationTest



	test "get new movie form and create movie" do
		get new_movie_path
		assert_template 'movies/new'
		assert_difference 'Movie.count', 1 do
			post movies_path, params: {movie: {url: "Titanic"}}
		end

		assert_template 'movies/index'
		assert_match "Titanic", response.body
	end
end