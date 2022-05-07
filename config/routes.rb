Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  devise_for :users
  devise_scope :user do
    root 'devise/sessions#new'
    get '/users', to: 'devise/registrations#new'
  end
  
  # root "static_pages#top"
  get "/users/dash_boards", to: "users#show", as: "user_root"

end
