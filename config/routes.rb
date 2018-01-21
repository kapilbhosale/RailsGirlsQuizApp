Rails.application.routes.draw do
  resources :tests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/list_students', to: 'students#index'

  get '/exams', to: 'exams#index'
  get '/exams/:id', to: 'exams#show'
  post '/exams/:id/submit', to: 'exams#submit'
end
