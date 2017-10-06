class Manage::EventsController < Manage::ApplicationController
  before_action :authenticate_brewery!
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = current_brewery.events.page(params[:page]).per(10)
  end

  def show
  end

  def new
    @event = current_brewery.events.build
  end

  def create
    @event = current_brewery.events.build(event_params)

    if @event.save
      redirect_to manage_event_path(@event)
    else
      render :new
    end
  end

  def destroy
    @event.destroy
    redirect_to manage_events_path
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to manage_event_path(@event)
    else
      render :edit
    end
  end

  private

  def set_event
    @event = current_brewery.events.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:name, :description, :start_at, :end_at, :sales)
  end

end
