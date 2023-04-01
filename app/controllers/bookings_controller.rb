class BookingsController < ApplicationController
    def index
        booking = Booking.all
        render json: booking
    end

    def show
        bookings = Booking.find_by(id: params[:id])
        render json: booking
    end

    def create
        booking = Booking.create(booking_params)
        render json: booking
    end

    def update
        booking = Booking.find_by(id: params[:id])
        booking.update(booking_params)
    end

    def destroy
        booking = Booking.find_by(id: params[:id])
        if booking 
            booking.destroy
            head :no_content
        else
            render json: {error: "Booking not found"}, status: :not_found
        end
    end

    private

    def booking_params
        params.permit(:user_id, :service_id, :name, :email, :phone, :moving_to, :moving_from, :moving_date, :house_size)
    end
end
