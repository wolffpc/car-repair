class RatingsController < ApplicationController
    def create
        @appointment = Appointment.find(params[:appointment_id])
        @rating = @appointment.create_rating(rating_params)
        redirect_to appointment_path(@appointment)
    end

    private
        def rating_params
            params.require(:rating).permit(:rating)
        end
end
