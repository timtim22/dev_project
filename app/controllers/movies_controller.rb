class MoviesController < ApplicationController
	def index
		@movies = Movie.paginate(page: params[:page], per_page: 10)
	end

	def new
		@movie = Movie.new
	end

	def create
		@movie = current_user.movies.new(movie_params)
		if @movie.save
			flash[:notice] = "Movie is shared with your friends"
			redirect_to movies_path
		else
			render 'new'
		end
	end


	private
	
	def movie_params
		params.require(:movie).permit(:url)
	end
end