class AppointmentsController < ApplicationController
  # before_action :authenticate_user
  # before_action :set_appointment, only: [:show, :update, :destroy]
  def new
    @appointment = Appointment.new
  end
  def show
    @appointment = Appointment.find params[:id]
  end
  def create
    @appointment = Appointment.create(appointment_params)
  end

  def edit
    @appointment = Appointment.find params[:id]
  end

  def index
     @appointment = Appointment.all
     # render json: @appointment
     # @appointment = current_user.appointments
  end

  def destroy
    appointmentDelete = Appointment.find params[:id]
    appointmentDelete.destroy
    redirect_to appointments_path
  end

  def update
    appointment = Appointment.find params[:id]
    appointment.update appointment_params
    redirect_to(appointments_path)
  end
  private
    def appointment_params
        params.require(:appointment).permit(:time, :date, :title, :description, :address, :timeTo, :aside, :asideTo, :latitude, :longitude, :user_id)
    end
end
