class MessagesController < ApplicationController
  # skip_before_action :ensure_authenticated_user, only: %i( index create )
  # skip_before_action :verify_authenticity_token

  before_action :set_room_and_user, only: :create

  def index
    render json: @room.message
  end

  def create
    @message = Message.create! body: params[:message][:body], room: @room, user: @current_user
  end

  private

  def set_room_and_user
    @room = Room.find(params[:room_id])
    @current_user = User.find(params[:current_user])
  end
end
