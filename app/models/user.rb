class User < ActiveRecord::Base
  enum status: %i(online offline away)

  has_many :messages, dependent: :destroy
end
