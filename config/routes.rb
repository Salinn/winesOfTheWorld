Rails.application.routes.draw do

  devise_for :users
  root :to => "static_pages#home"

  StaticPagesController.action_methods.each do |action|
    get "/#{action}", to: "static_pages##{action}", as: "#{action}"
  end
end
