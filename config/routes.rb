Rails.application.routes.draw do
  
  root "home#index"
  get 'index' => "home#index"
  get 'about' => "home#about"
  get 'blog-home-1' => "home#blog-home-1"
  get 'blog-home-2' => "home#blog"
  get 'blog-post' => "home#blog-post"
  get 'contact' => "home#contact"
  get 'faq' => "home#faq"
  get 'full-width' => "home#full-width"
  get 'portfolio-1-col' => "home#portfolio-1-col"
  get 'portfolio-2-col' => "home#portfolio-2-col"
  get 'portfolio-3-col' => "home#portfolio-3-col"
  get 'portfolio-4-col' => "home#portfolio-4-col"
  get 'portfolio-item' => "home#portfolio-item"
  get 'pricing' => "home#pricing"
  get 'services' => "home#services"
  get 'sidebar' => "home#sidebar"
  
  
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
