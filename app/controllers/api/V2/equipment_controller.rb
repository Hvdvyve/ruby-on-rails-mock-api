class Api::V2::EquipmentController < ApplicationController
    skip_before_action :verify_authenticity_token

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

    #POST /equipment
    def create
        @equipment = Equipment.new(fact_params)
        if @equipment.save
            render json: { message: 'Equipment created successfully.'}, status: 200
        else
            render error: { error: 'Cannot create Equipment' }, status: 400
        end
    end

    #DELETE /equipment/:id
    def destroy
        @equipment = Equipment.find(params[:id])
        if @equipment
            @equipment.destroy
            render json: { message: 'Equipment deleted successfully.' }, status: 200 
        else
            render error: { error: 'Cannot delete Equipment' }, status: 400
        end
    end

    private

    def fact_params
        params.permit(:name, :description)
    end
end
