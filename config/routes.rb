Rails.application.routes.draw do
  root 'welcome#test'
  get '/search', to: 'search#show'
end
