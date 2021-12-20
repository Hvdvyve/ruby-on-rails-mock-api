class Api::V1::EquipmentController < ApplicationController
    skip_before_action :verify_authenticity_token

    #GET /equipment
    def index
        render json: ([
            {
                "id": 1,
                "name": "Beemer",
                "description": "Some kind of projector.",
                "created_at": "2021-12-19T10:50:35.389Z",
                "updated_at": "2021-12-19T10:50:35.389Z"
            },
            {
                "id": 2,
                "name": "Cable",
                "description": "Internet connections with cable connection.",
                "created_at": "2021-12-19T10:50:35.395Z",
                "updated_at": "2021-12-19T10:50:35.395Z"
            },
            {
                "id": 3,
                "name": "Lamp",
                "description": "Movable lamp",
                "created_at": "2021-12-19T10:50:35.399Z",
                "updated_at": "2021-12-19T10:50:35.399Z"
            }
            ])
    end

    #GET /equipment/:id
    def show
        render json: 
        {
            "id": 1,
            "name": "Beemer",
            "description": "Some kind of projector.",
            "created_at": "2021-12-19T10:50:35.389Z",
            "updated_at": "2021-12-19T10:50:35.389Z"
        }
    end

    #POST /equipment
    def create
        render json: { message: 'Equipment created successfully.'}, status: 200    
    end

    #DELETE /equipment/:id
    def destroy
        render json: { message: 'Equipment deleted successfully.' }, status: 200 
    end

end
