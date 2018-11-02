module Adobbs
  class Engine < ::Rails::Engine
    isolate_namespace Adobbs
    config.generators.api_only = true

    config.to_prepare do
      Adobbs.user_class.send :include, UserClassAttrs unless Adobbs.user_class.nil? # extend your host application models here
    end
  end
end
