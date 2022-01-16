Rails.application.routes.draw do
  get "/articles", to: "articles#index" 
  #the above route declares that GET /articles requests are mapped to the index action of ArticlesController.

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
