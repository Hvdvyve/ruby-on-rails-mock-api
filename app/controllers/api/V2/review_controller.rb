class Api::V2::ReviewController < ApplicationController
    skip_before_action :verify_authenticity_token

    #GET /review
    def index
        @review = Review.all
        render json: @review
    end

    #GET /review/:id
    def show
        @review = Review.find(params[:id])
        render json: @review
    end

    #POST /review
    def create
        @review = Review.new(fact_params)
        if @review.save
            render json: { message: 'Review created successfully.'}, status: 200 
        else
            render error: { error: 'Cannot create Review.' }, status: 400
        end     
    end

    #DELETE /review/:id
    def destroy
        def destroy
            @review = Review.find(params[:id])
            if @review
                @review.destroy
                render json: { message: 'Review deleted successfully.' }, status: 200 
            else
                render error: { error: 'Cannot delete Review.' }, status: 400
            end
        end 
    end

    private

    def fact_params
        params.permit(:reservationId, :userId, :review)
    end

end
