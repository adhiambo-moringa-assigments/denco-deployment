class BooksController < ApplicationController
    skip_before_action :authorized, only: [:index, :show, :create, :update, :destroy]

    def index
        books = Book.all
        render json: books
    end

    def show
       books= Book.find_by(id: params[:id])
        render json: books
    end

    def create
       books= Book.create(booking_params)
        render json: books
    end

    def update
       books= Book.find_by(id: params[:id])
        books.update(booking_params)
    end

    def destroy
       books= Book.find_by(id: params[:id])
        if books
            books.destroy
            head :no_content
        else
            render json: {error: "Booking not found"}, status: :not_found
        end
    end

    private

    def booking_params
        params.permit(:usr_id, :service_id, :name, :email, :phone, :moving_to, :moving_from, :moving_date, :house_size)
    end

end
