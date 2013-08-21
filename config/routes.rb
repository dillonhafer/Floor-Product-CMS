JohnsoniteCom::Application.routes.draw do
  devise_for :users, :path => "sessions", :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }, :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'cmon_let_me_in' }
  
  scope "/admin" do
    # Colors
    resources :colors
    resources :color_palettes, :path => "color-palettes"
    resources :color_families, :path => "color-families"
    resources :textures, :path => "textures"
    resources :patterns, :path => "patterns"

    # Wallbase
    resources :wallbase_profiles, path: 'wallbase-profiles'
    resources :wallbase_style_types, path: 'wallbase-style-types'
    resources :wallbase_collection_sections, path: 'wallbase-collection-sections'
    resources :wallbase_collections, path: 'wallbase-collections'

    # Products
    post '/products' => 'products#index', as: 'product_search'    
    resources :products
    resources :product_widths, path: 'product-widths'
    resources :product_lengths, path: 'product-lengths'
    resources :product_thicknesses, path: 'product-thicknesses'
    resources :product_families, path: 'product-families'
    resources :product_categories, path: 'product-categories'
    resources :product_warranties, path: 'product-warranties'

    # Users
    resources :users
    get 'make-admin/:id' => 'users#make_admin', as: 'make_admin'
    get 'remove-admin/:id' => 'users#remove_admin', as: 'remove_admin'
  end

  get 'my-account' => "users#my_account", as: 'my_account'
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
