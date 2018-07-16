Rails.application.routes.draw do
   root 'knowledges#index'
   resources :knowledges
   get 'about', to: 'knowledges#about'
end
