class UsersController < ApplicationController
	def new
		@user = User.new
    end

    
    def create
    end

   
    def index
    end

    
    def show
    	@user = User.find(session[:user_id])
		@reviews = @user.reviews.all
    end

    
    def edit
    end

    
    def update
    end

    
    def destroy
    end
end
