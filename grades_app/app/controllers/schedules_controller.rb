class SchedulesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :create, :update, :destroy, :new]
  before_action :set_schedule, only: %i[ show edit update destroy]
  before_action :set_user
  def index
    @schedules = @user.schedules.all
  end
  
  def show
  end


  def new
    @schedule = @user.schedules.new
  end

  def create
    @schedule = @user.schedules.new(schedule_params)
    respond_to do |format|
      if @schedule.save
        format.html { redirect_to schedule_url(@schedule), notice: "Schedule was successfully created." }
        format.json {render :show, status: :created, location: @schedule }
      else
        format.html {render :new, status: :unprocessable_entity}
        format.json { render json: @schedule.errors, status: :unprocessable_entity}
      end
    end
  end




  private
  def set_user
    @user = current_user
  end

  def schedule_params
    params.require(:schedule).permit(:title)
  end

  def set_schedule
    @schedule = Schedule.find(params[:id])
  end


end
