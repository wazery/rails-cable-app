class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_#{params[:room]}"
  end

  def receive(data)
    p data
    ActionCable.server.broadcast("chat_#{params[:room]}", data)
    Message.create data
  end

  # def follow(data)
  #   stop_all_streams
  #   stream_from "messages:#{data['message_id'].to_i}:comments"
  # end
  #
  # def unfollow
  #   stop_all_streams
  # end
end
