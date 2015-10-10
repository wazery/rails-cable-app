# class MessageRelayJob < ApplicationJob
#   def perform(message)
#     ActionCable.server.broadcast("messages:#{message.room_id}:comments",
#                                  comment: CommentsController.render(partial: 'comments/comment',
#                                                                     locals: { comment: comment }
#                                                                    )
#                                 )
#   end
# end
