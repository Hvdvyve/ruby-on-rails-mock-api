class Api::V1::EquipmentController < ApplicationController

    #GET /equipment
    def index
        @equipment = Equipment.all
        render json: ([
            { name: 'Beemer', description: 'Some kind of projector.'}, 
            { name: 'Cable', description: 'Internet connections with cable connection.'}, 
            { name: 'Lamp', description: 'Movable lamp'}
            ])
    end

    #GET /equipment/:id
    def show
        @equipment = Equipment.find(params[:id])
        render json: { name: 'Beemer', description: 'Some kind of projector.'}
    end

end
