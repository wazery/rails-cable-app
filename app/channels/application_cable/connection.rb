module ApplicationCable
  class Connection < ActionCable::Connection::Base
    ActionCable.server.config.disable_request_forgery_protection = true
    # identified_by :current_user
    #
    # def connect
    #   self.current_user = find_verified_user
    #   logger.add_tags 'ActionCable', current_user.name
    # end
    #
    # protected
    #
    # def find_verified_user
    #   p 'UUUUU' * 20
    #   p cookies.signed[:user_id]
    #   verified_user = User.find(cookies.signed[:user_id])
    #   return verified_user if verified_user
    #
    #   reject_unauthorized_connection
    # end
  end
end
