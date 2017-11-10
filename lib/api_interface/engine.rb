module ApiInterface
  class Engine < ::Rails::Engine
    isolate_namespace ApiInterface
    require 'swagger/blocks'
    require 'select2-rails'
  end
end