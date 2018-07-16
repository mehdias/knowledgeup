Rails.application.routes.draw do
   root 'knowledges#index'
   resources :knowledges
end
