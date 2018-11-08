Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'scrapeur#index'
  post '/search', to: 'scrapeur#search'
  get '/refrech', to: 'scrapeur#refrech'  
end
