Rails.application.routes.draw do

  get 'facility_reservations/new'

  get 'facility_reservations/create'

  get 'facility_reservations/edit'

  get 'facility_reservations/update'

  get 'facility_reservations/destroy'

  get 'facility_reservations/index'

  get 'facility_reservations/show'

  get 'equipment_reservations/new'

  get 'equipment_reservations/create'

  get 'equipment_reservations/edit'

  get 'equipment_reservations/update'

  get 'equipment_reservations/destroy'

  get 'equipment_reservations/index'

  get 'equipment_reservations/show'

  get 'equipments/new'

  get 'equipments/create'

  get 'equipments/edit'

  get 'equipments/update'

  get 'equipments/destroy'

  get 'equipments/index'

  get 'equipments/show'

  get 'venues/new'

  get 'venues/create'

  get 'venues/edit'

  get 'venues/update'

  get 'venues/destroy'

  get 'venues/index'

  get 'venues/show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :pages
  resources :reservations
  resources :readmissions
  
  root "pages#index"
  
  get 'pages/index'
  get '/admin' => 'users#new'
  get '/about' => 'pages#about'
  get '/contact' => 'pages#contact'
  get '/studentlogin' => 'pages#student_login'
  get '/test' => 'reservations#test'


  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
