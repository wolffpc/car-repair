class AppointmentsController < ApplicationController
    def show
        @appointment = Appointment.find(params[:id])
        # Check to see if the appointment has been filled out.
        # If not render edit to have user complete the appointment form.
        if @appointment.first.blank?
            render 'edit'
        end
    end
    
    def new
        @appointment = Appointment.new
    end

    def edit
        @appointment = Appointment.find(params[:id])
    end

    def create
        @appointment = Appointment.new(appointment_params.merge(ipaddress: request.remote_ip))
        # the IP address of the user gets saved

        if @appointment.save
            # On successful appointment submission send email
            AppointmentMailer.with(appointment: @appointment).appointment_email.deliver_now
            # and display the thank you message
            render 'thank_you'
        else
            render 'new'
        end
    end

    def update
        @appointment = Appointment.find(params[:id])

        if @appointment.update(appointment_params)
            # The appointment is being finalized, on form submit send emails
            AppointmentMailer.with(appointment: @appointment).confirmation_email.deliver_now
            AppointmentMailer.with(appointment: @appointment).dealership_email.deliver_now
            render 'success'
        else
            render 'edit'
        end
    end

    private
        def appointment_params
            params.require(:appointment).permit(:email, :first, :last, :phone, :year, :make, :model, :repair, :datetime, :ipaddress)
        end
end
