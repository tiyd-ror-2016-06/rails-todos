require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users

  root 'lists#index'

  # get "/lists/new" => "lists#new", as: :make_a_list
  # get "/lists/:id" => "lists#show", as: :list
  # post "/lists" => "lists#create"
  # get "/lists" => "lists#index"
  # delete "/lists/:id" => "lists#destroy"

  resources :lists, except: [:edit, :update] do
    resources :items, shallow: true do
      patch :finish
    end
  end

  mount Sidekiq::Web => "/sidekiq"

  # patch "/items/:id/finish" => "items#finish"

  get "/sandbox/twitter" => "sandbox#twitter"
end
