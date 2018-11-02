require "adobbs/engine"

module Adobbs

  @@default_user_class = "User"

  mattr_accessor :user_class

  def self.user_class
    unless @@user_class.nil?
      @@user_class.constantize
    else
      if Adobbs.const_defined? @@default_user_class
        @@default_user_class.constantize
      else
        nil
      end
    end
  end

end
