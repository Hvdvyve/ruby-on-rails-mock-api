class Api::V1::RoomOrDeskEquipmentsController < ApplicationController
    skip_before_action :verify_authenticity_token

    #GET /room_or_desk_equipments
    def index
        render json: ([
            { roomOrDeskId: 1, equipmentId:1, status: 'working' },
            { roomOrDeskId: 1, equipmentId:2, status: 'working' }
        ])
    end

    #GET /room_or_desk_equipments/:id
    def show
        render json: { id: 1, roomOrDeskId: 1, equipmentId:2, status: 'working' }
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