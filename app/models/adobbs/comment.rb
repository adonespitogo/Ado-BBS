module Adobbs
  class Comment < ApplicationRecord
    belongs_to :user, class_name: Adobbs.user_class.to_s, foreign_key: "user_id"
    belongs_to :post
  end
end
