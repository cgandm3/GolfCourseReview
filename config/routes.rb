Rails.application.routes.draw do

  # resources :golfcourses do
  #   resources :reviews
  # end

  # resources :users 

  root "golfcourses#index"

  get    "golfcourses/:golfcourse_id/reviews(.:format)" => "reviews#index", as: :golfcourse_reviews
  post   "golfcourses/:golfcourse_id/reviews(.:format)" => "reviews#create"
  get    "golfcourses/:golfcourse_id/reviews/new(.:format)" => "reviews#new", as: :new_golfcourse_review
  get    "golfcourses/:golfcourse_id/reviews/:id/edit(.:format)" => "reviews#edit", as: :edit_golfcourse_review
  get    "golfcourses/:golfcourse_id/reviews/:id(.:format)" => "reviews#show", as: :golfcourse_review
  patch  "golfcourses/:golfcourse_id/reviews/:id(.:format)" => "reviews#update"
  put    "golfcourses/:golfcourse_id/reviews/:id(.:format)" => "reviews#update"
  delete "golfcourses/:golfcourse_id/reviews/:id(.:format)" => "reviews#destroy"

  get    "golfcourses(.:format)" =>  "golfcourses#index", as: :golfcourses
  post   "golfcourses(.:format)" =>  "golfcourses#create"
  get    "golfcourses/new(.:format)" =>  "golfcourses#new", as: :new_golfcourse
  get    "golfcourses/:id/edit(.:format)" => "golfcourses#edit", as: :edit_golfcourse
  get    "golfcourses/:id(.:format)" => "golfcourses#show", as: :golfcourse
  patch  "golfcourses/:id(.:format)" => "golfcourses#update"
  put    "golfcourses/:id(.:format)" => "golfcourses#update"
  delete "golfcourses/:id(.:format)" => "golfcourses#destroy"

  get    "users(.:format)" => "users#index", as: :users
  post   "users(.:format)" => "users#create"
  get    "users/new(.:format)" => "users#new", as: :new_user
  get    "users/:id/edit(.:format)" => "users#edit", as: :edit_user
  get    "users/:id(.:format)" => "users#show", as: :user
  patch  "users/:id(.:format)" => "users#update"
  put    "users/:id(.:format)" => "users#update"
  delete "users/:id(.:format)" => "users#destroy"
  
  get    "/login(.:format)"  => "sessions#new", as: :login
  post   "/login(.:format)"  => "sessions#create"
  delete "/logout(.:format)" => "sessions#destroy", as: :logout


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
