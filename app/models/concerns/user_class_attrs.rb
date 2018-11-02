module UserClassAttrs
  extend ActiveSupport::Concern

  # 'included do' causes the included code to be evaluated in the
  # context where it is included (article.rb), rather than being
  # executed in the module's context (blorgh/concerns/models/article).

  included do
    has_many :posts, class_name: "Adobbs::Post", dependent: :destroy
    has_many :comments, class_name: "Adobbs::Comment", dependent: :destroy
    has_many :received_messages, class_name: "Adobbs::Message", foreign_key: "receiver_id", dependent: :destroy
    has_many :sent_messages, class_name: "Adobbs::Message", foreign_key: "sender_id", dependent: :destroy
    # TODO: Create notifications has_many :through

    #before_validation :set_author

    #private
    #def set_author
    #  self.author = User.find_or_create_by(name: author_name)
    #end
  end

  #def summary
  #  "#{title}"
  #end

  #module ClassMethods
    #def some_class_method
    #  'some class method string'
    #end
  #end
end
