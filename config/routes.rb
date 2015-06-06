Rails.application.routes.draw do

    # get 'users/index'
    # get 'users/show'
    # get 'users/new'
    # get 'users/create'
    # get 'users/edit'
    # get 'users/destroy'
    # get 'users/update'

  root "golfcourses#index"

  resources :golfcourses do
    resources :reviews
  end

  resources :users 

  get "/login"     => "sessions#new"
  post "/login"    => "sessions#create"
  delete "/logout" => "sessions#destroy"

  # get  "golfcourses/:golfcourse_id/reviews(.:format)" => "reviews#index", as: :golfcourse_reviews_path
  # post "golfcourses/:golfcourse_id/reviews(.:format)" => "reviews#create"
  # get  "golfcourses/:golfcourse_id/reviews/new(.:format)" => "reviews#new", as: :new_golfcourse_review_path
  # get  "golfcourses/:golfcourse_id/reviews/:id/edit(.:format)" => "reviews#edit", as: :edit_golfcourse_review_path
  # get  "golfcourses/:golfcourse_id/reviews" => "reviews#show"
  # get  "golfcourses/" => "golfcourses#index"
    
  
    # get "golfcourses/:golfcourse_id/reviews(.:format)" => "reviews#index", as: :course_reviews
    # get    "courses/:golfcourse_id/reviews/new(.:format)" => "reviews#new", as: :new_course_review
    # get    "courses/:golfcourse_id/reviews/:id/edit(.:format)" => "reviews#edit", as: :edit_course_review
    # get    "courses/:golfcourse_id/reviews/:id(.:format)" => "reviews#show", as: :course_review
    # patch  "courses/:golfcourse_id/reviews/:id(.:format)" => "reviews#update"
    # put    "courses/:golfcourse_id/reviews/:id(.:format)" => "reviews#update"
    # delete "courses/:golfcourse_id/reviews/:id(.:format)" => "reviews#destroy"
    # get    "courses(.:format)" =>  "golfcourses#index"
# post   "courses(.:format)" =>  "golfcourses#create"
# get    "courses/new(.:format)" =>  "golfcourses#new" 
# get    "courses/:id/edit(.:format)" => "golfcourses#edit" 
    # get    "courses/:id(.:format)" => "golfcourses#show", as: :course
# patch  "courses/:id(.:format)" => "golfcourses#update"
# put    "courses/:id(.:format)" => "golfcourses#update"
# delete "courses/:id(.:format)" => "golfcourses#destroy"

  # get "courses/" => "golfcourses#index"
  # get "courses/:id" => "golfcourses#show", as: :course
  # get "reviews/" => "reviews#new"
  # get "reviews/:id" => "reviews#show", as: :review

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  
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
