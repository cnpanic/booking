Rails.application.routes.draw do

  devise_for :users, controllers: {:registrations => "users/registrations", :sessions => "users/sessions" } 
  root 'home#division'
  resources :home
  get 'index' => "home#index"
  get 'about' => "home#about"
  get 'contact' => "home#contact"
  get 'faq' => "home#faq"
  get 'full-width' => "home#full-width"
  get 'list' => "home#list"
  get 'detail(/:id)' => "home#detail"
  get 'services' => "home#services"
  get 'mypage' => "home#mypage"
  get 'bookup' => "home#bookup"
  get 'division' => "home#division"
  
  get 'clean/:id' => "home#clean"
  
  get 'book_content/:id' => "home#book_content"
  post '/bookupload' => "home#bookupload"
  
  get '/mypage_selling' => "home#mypage_selling"
  get 'delete_book/:id' => 'home#delete_book' #책삭제
  get 'update_book_view/:id' => 'home#update_book_view'
  post 'update_book/:id' => 'home#update_book'
  # 여기서부터 신새날이 게시판 route를 올린다-------------------------------------------
  
  get '/index2' => "home#index2"

  post '/write' => "home#write"

  get '/show/:post_id' => "home#show"

  get '/update/:post_id' => "home#update"

  post '/real_update/:post_id' => "home#real_update"

  get '/destroy/:post_id' => "home#destroy"
  
  get '/popup' => "home#popup"
  
  get '/list_board' => "home#list_board"
  
  post '/reply_write' =>"home#reply_write"

# 여기까지 신새날이 게시판 route를 올린다-------------------------------------------

  post '/bookreply' => "home#bookreply"
  
  
  # faq 게시판

  get '/faq_listboard' => "home#faq_listboard"
  
  get '/faq_index' => "home#faq_index"
  
  post '/faq_write' => "home#faq_write"
  
  get '/faq_show/:faq_id' => "home#faq_show"
  
  get '/faq_update/:faq_id' => "home#faq_update"
  
  post '/faq_real_update/:faq_id'=> "home#faq_real_update"
  
  get 'faq_destroy/:faq_id' => "home#faq_id"
  
  post '/faq_reply' =>"home#faq_reply"
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
