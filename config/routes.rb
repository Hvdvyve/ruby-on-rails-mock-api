Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  	namespace 'api' do
      namespace 'v1' do
        
        resources :equipment
        resources :room_or_desks
        resources :room_or_desk_equipments
        resources :review

      end
      
      namespace 'v2' do
        
        resources :equipment
        resources :room_or_desks
        resources :room_or_desk_equipments
        resources :review
        
      end
    end
end