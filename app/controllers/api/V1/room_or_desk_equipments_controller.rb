class Api::V1::RoomOrDeskEquipmentsController < ApplicationController
    skip_before_action :verify_authenticity_token

    #GET /room_or_desk_equipments
    def index
        render json: ([
            {
                "id": 1,
                "roomOrDeskId": 1,
                "equipmentId": 1,
                "status": "working",
                "created_at": "2021-12-19T10:50:35.448Z",
                "updated_at": "2021-12-19T10:50:35.448Z"
            },
            {
                "id": 2,
                "roomOrDeskId": 1,
                "equipmentId": 2,
                "status": "broken",
                "created_at": "2021-12-19T10:50:35.453Z",
                "updated_at": "2021-12-19T16:53:51.009Z"
            }
        ])
    end

    #GET /room_or_desk_equipments/:id
    def show
        render json: {
            "id": 1,
            "roomOrDeskId": 1,
            "equipmentId": 1,
            "status": "working",
            "created_at": "2021-12-19T10:50:35.448Z",
            "updated_at": "2021-12-19T10:50:35.448Z"
        }
    end

    #PUT /room_or_desk_equipments/:id
    def update
        render json: { message: 'room_or_desk_equipments status updated successfully.'}, status: 200    
    end

    #POST /room_or_desk_equipments
    def create
        render json: { message: 'room_or_desk_equipments created successfully.'}, status: 200    
    end

    #DELETE /room_or_desk_equipments/:id
    def destroy
        render json: { message: 'room_or_desk_equipments deleted successfully.' }, status: 200 
    end
end