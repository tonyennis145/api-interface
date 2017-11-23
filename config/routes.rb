ApiInterface::Engine.routes.draw do
  root :to => "ui#index"
  get "/start" => "ui#start"
end