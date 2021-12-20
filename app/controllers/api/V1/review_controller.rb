class Api::V1::ReviewController < ApplicationController
    skip_before_action :verify_authenticity_token

    #GET /review
    def index
        render json: ([
            {
                "id": 1,
                "reservationId": 1,
                "userId": 1,
                "review": "I did not get the coffee I asked the staff to bring me.",
                "created_at": "2021-12-19T10:50:35.467Z",
                "updated_at": "2021-12-19T10:50:35.467Z"
            },
            {
                "id": 2,
                "reservationId": 2,
                "userId": 1,
                "review": "The place really needs to be cleaned...",
                "created_at": "2021-12-19T10:50:35.473Z",
                "updated_at": "2021-12-19T10:50:35.473Z"
            }
        ])
    end

    #GET /review/:id
    def show
        render json: {
            "id": 1,
            "reservationId": 1,
            "userId": 1,
            "review": "I did not get the coffee I asked the staff to bring me.",
            "created_at": "2021-12-19T10:50:35.467Z",
            "updated_at": "2021-12-19T10:50:35.467Z"
        }
    end

    #POST /review
    def create
        render json: { message: 'Review created successfully.'}, status: 200    
    end

    #DELETE /review/:id
    def destroy
        render json: { message: 'Review deleted successfully.' }, status: 200 
    end

end
