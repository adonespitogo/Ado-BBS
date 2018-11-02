module Adobbs
  class Post < ApplicationRecord
    belongs_to :user, class_name: Adobbs.user_class.to_s, foreign_key: "user_id"
    has_many :comments, dependent: :destroy
  end
end
