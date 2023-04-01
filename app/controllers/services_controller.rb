class ServicesController < ApplicationController

    skip_before_action :authorized, only: [:index, :show, :create, :update, :destroy]

    def index
        service = Service.all
        render json: service
    end

    def show
        service = Service.find_by(id: params[:id])
        render json: service
    end

    def create
        service = Service.create(service_params)
        render json: service
    end

    def update
        service = Service.find_by(id: params[:id])
        service.update(service_params)
    end

    def destroy
        service = Service.find_by(id: params[:id])
        if service 
            service.destroy
            head :no_content
        else
            render json: {error: "Service not found"}, status: :not_found
        end
    end

    private

    def service_params
        params.permit(:name, :price, :description, :user_id, :image)
    end
end
