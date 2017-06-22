Rails.application.routes.draw do
  get '/', to: 'urls#index', as: 'urls'
  get ':slug', to: 'urls#show', as: 'slug'
end
