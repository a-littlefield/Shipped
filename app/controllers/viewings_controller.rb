class ViewingsController < ApplicationController
  def index
  end

  def new
    @viewing = Viewing.new
  end

  def create
    @viewing = current_user.viewings.create(viewing_params)
      redirect_to movies_path
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

  def viewing_params
    params.require(:viewing).permit(:movie_id, :watched_count, :liked)
  end
end
