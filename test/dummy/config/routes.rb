Rails.application.routes.draw do
  mount ApiInterface::Engine => "/api_interface"
end
