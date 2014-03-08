Medicalapp::Application.routes.draw do
  resources :appointments

  resources :people
  get 'home/index'
  devise_for :users
  root :to => 'home#index'
  match 'type_people/:type_person'=>'People#index', :as => 'type_people' 
  resources :users
  match '/create_user' =>'Users#create',:as=>'create_user'
  match 'new_appointment_with_doctor/:doctor_id'=>'Appointments#new', :as => 'new_appointment_with_doctor'
  match 'cancel_appointment/:appointment_id'=>'Appointments#cancel', :as => 'cancel_appointment'

 
end
