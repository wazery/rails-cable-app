class WelcomeController < ApplicationController
  def index
    render json: {
      status: 'ok',
      message: 'The API is well functioning, check the URL value for the front end app',
      url: 'http://ng-cable.herokuapp.com'
    }
  end
end
