class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = @review = Review.new(params[:review])
    @review.dragon = Dragon.find(params[:dragon_id])
    @review.user = current_user.find(params[:current_user_id])
    # Associate review with dragon
    # Associate review with user
    # use current_user to access the currently logged user
    @review.save
    redirect_to @review
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    redirect_to reviews_path
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])

    if @review.update(review_params)
      redirect_to @review
    else
      render 'edit'
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
