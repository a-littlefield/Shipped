class RatingsController < ApplicationController
  def index
  end

  def new
    @rating = Rating.new
  end

  def create
    @rating = current_user.ratings.new(rating_params)
    respond_to do |format|
      if @rating.save
        format.json { render json: @rating, status: :created, location: @rating }
      else 
        format.json { render json: @rating.errors, status: :unprocessable_entity }
      end
      format.js
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def rating_params
    params.require(:rating).permit(:movie_id, :star, :review)
  end
end
