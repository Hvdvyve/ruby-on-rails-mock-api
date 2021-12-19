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
            render json: { message: 'RoomOrDeskEquipment status updated successfully.'}, status: 200  
        else
            render error: { error: 'Cannot update Equipment status.' }, status: 400
        end
    end

    #POST /room_or_desk_equipments
    def create
        @room_or_desk_equipments = RoomOrDeskEquipment.new(fact_params)
        if @room_or_desk_equipments.save
            render json: { message: 'RoomOrDeskEquipment created successfully.'}, status: 200  
        else
            render error: { error: 'Cannot create RoomOrDeskEquipment.' }, status: 400
        end  
    end

    #DELETE /room_or_desk_equipments/:id
    def destroy
        @room_or_desk_equipments = RoomOrDeskEquipment.find(params[:id])
        if @room_or_desk_equipments
            @room_or_desk_equipments.destroy
            render json: { message: 'RoomOrDeskEquipment deleted successfully.' }, status: 200 
        else
            render error: { error: 'Cannot delete RoomOrDeskEquipment.' }, status: 400
        end
    end

    private

    def fact_params
        params.permit(:roomOrDeskId, :equipmentId, :status)
    end
end