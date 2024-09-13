class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to event_path(@event)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
  end

  private
  def event_params
    params.require(:event).permit(:name, :description, :start_date, :end_date, :location, :capacity, :secret_code)
  end
end
