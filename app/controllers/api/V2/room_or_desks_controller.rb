class Api::V2::RoomOrDesksController < ApplicationController
    skip_before_action :verify_authenticity_token

    #GET /room_or_desks
    def index
        @room_or_desks = RoomOrDesk.all
        render json: @room_or_desks
    end

    #GET /room_or_desks/:id
    def show
        @room_or_desks = RoomOrDesk.find(params[:id])
        render json: @room_or_desks
    end

    #PUT /room_or_desks/:id
    def update
        @room_or_desks = RoomOrDesk.find(params[:id])
        if @room_or_desks
            @room_or_desks.update(params.permit(:rod_type))
            render json: { message: 'room_or_desks rod_type updated successfully.'}, status: 200
        else
            render error: { error: 'Cannot update room_or_desks rod_type.' }, status: 400
        end
    end

    #POST /room_or_desks
    def create
        @room_or_desks = RoomOrDesk.new(fact_params)
        if @room_or_desks.save
            render json: { message: 'RoomOrDesk created successfully.'}, status: 200  
        else
            render error: { error: 'Cannot create RoomOrDesk.' }, status: 400
        end      
    end

    #DELETE /room_or_desks/:id
    def destroy
        @room_or_desks = RoomOrDesk.find(params[:id])
        if @room_or_desks
            @room_or_desks.destroy
            render json: { message: 'RoomOrDesk deleted successfully.' }, status: 200 
        else
            render error: { error: 'Cannot delete RoomOrDesk.' }, status: 400
        end 
    end

    private

    def fact_params
        params.permit(:wing, :floor, :number, :places, :rod_type)
    end

end