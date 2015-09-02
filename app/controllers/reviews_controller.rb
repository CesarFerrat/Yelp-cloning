class ReviewsController < ApplicationController
	def new
		@review = Review.new
    end

    
    def create
    review_params = params.require(:review).permit(:title, :description, :date)
    @review = Review.new(review_params)

    unless @review.save
      render(:new)
    else
      redirect_to(reviews_path)
    end
    end

   
    def index
    @reviews = Review.order(:date)
    end

    
    def show
    @users = User.all
    @review = Review.find_by(:id => params[:id])

    end

    
    def edit
    end

    
    def update
    end

    
    def destroy
    end
end
