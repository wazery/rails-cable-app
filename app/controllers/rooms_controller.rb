class RoomsController < ApplicationController
  # skip_before_action :ensure_authenticated_user, only: %i( index show )

  def index
    @rooms = Room.all
    render json: @rooms
  end

  def show
    @room = Room.find(params[:id])
    render json: @room.messages
  end
end
