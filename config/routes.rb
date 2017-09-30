Rails.application.routes.draw do
  get '/', to: 'urls#index', as: 'urls'
  get ':slug', to: 'urls#show', as: 'slug'
  get '/categories/:slug', to: 'categories#index', as: 'categories'
end
