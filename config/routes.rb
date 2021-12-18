Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

#  get '/api/equipment/:id', to: 'equipment#show', as 'api/v1/equipment'

  resources :equipment

end

#namespace 'api' do
#  namespace 'v1' do
#    resources :equipment
#    resources :room_or_desks
#    resources :room_or_desk_equipments
#  end
#end
