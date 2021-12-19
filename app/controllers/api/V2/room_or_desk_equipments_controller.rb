class Api::V2::RoomOrDeskEquipmentsController < ApplicationController
    skip_before_action :verify_authenticity_token

    #GET /room_or_desk_equipments
    def index
        @room_or_desk_equipments = RoomOrDeskEquipment.all
        render json: @room_or_desk_equipments
    end

    #GET /room_or_desk_equipments/:id
    def show
        @room_or_desk_equipments = RoomOrDeskEquipment.find(params[:id])
        render json: @room_or_desk_equipments
    end

    #PUT /room_or_desk_equipments/:id
    def update
        @room_or_desk_equipments = RoomOrDeskEquipment.find(params[:id])
        if @room_or_desk_equipments
            @room_or_desk_equipments.update(params.permit(:status))
            render json: { message: 'room_or_desk_equipments status updated successfully.'}, status: 200  
        else
            render error: { error: 'Cannot update Equipment status' }, status: 400
        end
          
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