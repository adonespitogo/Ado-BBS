module Adobbs
  class UserNotification < ApplicationRecord

    belongs_to :user, class_name: Adobbs.user_class.to_s, foreign_key: "user_id"
    belongs_to :notification

  end
end
