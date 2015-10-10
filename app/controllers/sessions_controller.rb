class SessionsController < ApplicationController
  include ActionController::Cookies
  # skip_before_action :ensure_authenticated_user, only: %i( new create destroy )

  def new
    @users = User.all
    render json: @users
  end

  def create
    if authenticate_user(params[:user_id])
      render json: { message: 'Successfully created a new session' }, status: 200
    else
      render json: { error: 'Failed creating a new session' }, status: 403
    end
  end

  def destroy
    unauthenticate_user
    render json: { message: 'Successfully destroyed the session' }, status: 200
  end
end
