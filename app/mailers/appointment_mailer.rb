class AppointmentMailer < ApplicationMailer
    def appointment_email
        @appointment = params[:appointment]
        mail(to: @appointment.email, subject: 'Schedule your appointment')
    end

    def confirmation_email
        @appointment = params[:appointment]
        mail(to: @appointment.email, subject: 'Appointment Confirmation')
    end

    def dealership_email
        @appointment = params[:appointment]
        mail(to: 'repairs@example.com', subject: 'Car Repair Appointment')
    end
end
