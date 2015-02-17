KlshRu::Application.routes.draw do
  
  match '/base', to: 'base#index', via: 'get'

  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users

  resources :posts
  resources :quotes, :path => "they_talk_about_us/quotes"
  resources :articles, :path => "they_talk_about_us/media"
  
  resources :elephants, :path => "base/elephants" do
    resources :comment2s
  end  
  
  resources :docs, :path => "base/docs" do
    resources :comment4s
  end

  resources :reports, :path => "base/reports" do
    resources :comments
  end


  root  'posts#home'
  


  #match '/signup',  to: 'users#new',            via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contacts', to: 'static_pages#contacts', via: 'get'
  match '/faq', to: 'static_pages#faq', via: 'get'
  match '/photo', to: 'static_pages#photo', via: 'get'
  
  match '/toklsh', to: 'static_pages#toklsh', via: 'get'
  


  match 'everything/folklore', to: 'static_pages#folklore', via: 'get'
  match 'everything/studying', to: 'static_pages#studying', via: 'get'
  match 'everything/history', to: 'static_pages#history', via: 'get'
  match 'everything/people', to: 'static_pages#people', via: 'get'
  match 'everything/educational', to: 'static_pages#educational', via: 'get'

  match '/base', to: 'base#index', via: 'get'
  match '/base/rules', to: 'base#rules', via: 'get'
  
  match 'design_candidates/home1', to: 'design_candidates#home1', via: 'get'
  

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
