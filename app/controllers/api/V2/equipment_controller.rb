class Api::V2::EquipmentController < ApplicationController

    #GET /equipment
    def index
        @equipment = Equipment.all
        render json: @equipment
    end

    #GET /equipment/:id
    def show
        @equipment = Equipment.find(params[:id])
        render json: @equipment
    end

end
