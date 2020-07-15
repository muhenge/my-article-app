class RatingsController < ApplicationController
  def create
    @number_of_rating = []
    @rating = current_user.ratings.new(article_id: params[:article_id])
    
  end
  def all
    @all_ratings = create.count
  end

  def destroy
  end
end
