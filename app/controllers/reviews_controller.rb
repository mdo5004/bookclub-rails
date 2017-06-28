class ReviewsController < ApplicationController
    def index
        reviews = GoodreadsService.recent_reviews
        Review.destroy_all
        reviews = reviews.collect do |result|
            Review.create(result)
        end
        render json: reviews 
    end
end