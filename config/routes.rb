Rails.application.routes.draw do
  devise_for :admin
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'welcome/index'
  get 'programming/index'
  get 'programming/ruby'
  get 'programming/java'
  get 'programming/python'
  get 'music/index'
  get 'music/prehistory'
  get 'music/godfathers'
  get 'music/old_nectar'
  get 'music/svetlo'
  get 'music/pinstripe'
  get 'music/ten_thousand_microphones'
  get 'music/solo_music'
  get 'literature/index'
  get 'literature/prose'
  get 'literature/poetry'
  get 'literature/lyrics'
  get 'literature/dramaturgy'
  get 'nowhereland/index'
  get 'nowhereland/history'
  get 'nowhereland/cartography'
  get 'nowhereland/languages'
  get 'nowhereland/folklore'
  get 'contacts/index'
  get 'search/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
