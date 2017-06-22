Rails.application.routes.draw do
  get '/', to: 'profile#index', as: 'profile'
  get '/urls', to: 'urls#index', as: 'urls'
  get ':slug', to: 'urls#show', as: 'slug'
end
