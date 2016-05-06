Rails.application.routes.draw do
  root 'gyms#index'
  get '/gyms' => 'gyms#index'
  get'/gyms/new' => 'gyms#new'
  post '/gyms' => 'gyms#create'
  get '/gyms/:id' => 'gyms#show'
  get '/gyms/:id/edit' => 'gyms#edit'
  patch '/gyms/:id' => 'gyms#update'
  delete '/gyms/:id' => 'gyms#destroy'
end
 