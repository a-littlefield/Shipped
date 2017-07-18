class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
    @movies = current_user.movies
  end

  def create
    @movie = current_user.movies.new(movie_params)
    respond_to do |format|
      if @movie.save
        format.json { render json: @movie, status: :created, location: @movie }
      else 
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  def show
    @movie = Movie.find(params[:id])
    @rating = Rating.new
    @viewing = Viewing.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :genre, :location, :length, :avatar)
  end
end
