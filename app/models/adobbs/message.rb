module Adobbs
  class Message < ApplicationRecord

    belongs_to :sender, class_name: Adobbs.user_class.to_s, foreign_key: "sender_id"
    belongs_to :receiver, class_name: Adobbs.user_class.to_s, foreign_key: "receiver_id"

  end
end
