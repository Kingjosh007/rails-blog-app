Rails.application.routes.draw do
  root "users#index"

  get "/users", to: "users#index"
  get "/users/:id", to: "users#show"

  get "/users/:user_id/posts", to: "user_posts#index"
  get "/users/:user_id/posts/:id", to: "user_posts#show"
end
