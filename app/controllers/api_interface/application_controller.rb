module ApiInterface
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    layout "api_interface/swagger_layout"
  end
end
