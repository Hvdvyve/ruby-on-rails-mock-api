class Api::V1::EquipmentController < ApplicationController
    skip_before_action :verify_authenticity_token

    #GET /equipment
    def index
        render json: ([
            { name: 'Beemer', description: 'Some kind of projector.'}, 
            { name: 'Cable', description: 'Internet connections with cable connection.'}, 
            { name: 'Lamp', description: 'Movable lamp'}
            ])
    end

    #GET /equipment/:id
    def show
        render json: { id: 1, name: 'Beemer', description: 'Some kind of projector.'}
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
