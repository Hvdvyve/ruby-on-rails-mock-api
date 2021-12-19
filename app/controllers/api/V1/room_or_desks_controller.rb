class Api::V1::RoomOrDesksController < ApplicationController
    skip_before_action :verify_authenticity_token

    #GET /room_or_desks
    def index
        render json: ([
            { id: 1, wing: 'A', floor: 1, number: 'A12', places: 1, rod_type: 'Desk' },
            { id: 2, wing: 'B', floor: 1, number: 'A1', places: 2, rod_type: 'Conference room' }
        ])
    end

    #GET /room_or_desks/:id
    def show
        render json: { id: 1, wing: 'A', floor: 1, number: 'A12', places: 1, rod_type: 'Desk' }
    end

    #PUT /room_or_desks/:id
    def update
        render json: { message: 'room_or_desks rod_type updated successfully.'}, status: 200    
    end

    #POST /room_or_desks
    def create
        render json: { message: 'room_or_desks created successfully.'}, status: 200    
    end

    #DELETE /room_or_desks/:id
    def destroy
        render json: { message: 'room_or_desks deleted successfully.' }, status: 200 
    end

end