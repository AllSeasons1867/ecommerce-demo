class ReviewsController < ApplicationController
    def create 
        @product = Product.find(params[:product_id])
        @product.reviews.create! params.require(:review).permit(:content)
        redirect_to @product
    end 
end
