Bloccit::Application.routes.draw do

  get "posts/edit"
  get "posts/new"
  get "posts/show"
  get "posts/index"

  get "welcome/index"
  get "welcome/about"

  root :to => 'welcome#index'
end