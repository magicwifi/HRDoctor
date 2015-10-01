Onestep::Application.routes.draw do

  root :to => 'info#marketing'
  get '/api/money'  => 'api#money'

  get 'timeline' => "activities#timeline", as: "timeline"

  post '/checkout' => "orders#checkout"
  get '/orders/done' => "orders#done"
  post '/orders/notify' => "orders#notify"
  #get "/orders/new" => "orders#new",  :as => "new_order"
  get "/download" => "videos#download", :as => "download_video"
  get "/download" => "sick_hists#download", :as => "download_sick_hist"

  get "about" => "about#main", :as => "about"
  get "about/team" => "about#team"
  get "about/jobs" => "about#jobs"
  get "about/faq" => "about#faq"
  get "/set_locale" => "info#set_locale"
  get "/styleguide/css(/:ref)" => "info#styleguide"

  get "/blog" => "posts#index", :as => "blogs"
  get "/blog/:id" => "posts#show", :as => "blog"
  get "/blog/:id/edit" => "posts#edit", :as => "edit_blog"
  get "/write_blog" => "posts#new"

  # Use patch verb for editing posts, use put verb for creating a new post
  match 'blog_images', to: 'blog_images#create', via: [:put, :patch]

  resources :posts
  resources :blog_images
  resources :videos
  resources :sick_hists
  resources :sicknesses
  resources :password_resets

  get "notifications" => "notifications#index", :as => "notifications"
  delete "notifications/:id" => "notifications#destroy", :as => "notification"
  delete "notifications" => "notifications#clear", :as => "clear_notifications"

  patch '/restore_gravatar' => "users#restore_gravatar"
  patch 'edit-avatar' => 'users#update_avatar', :as => :update_avatar
  get "edit-avatar" => "users#edit_avatar", :as => "edit_avatar"
  patch 'update_poster' => 'sick_cases#update_poster', :as => :update_poster

  resources :comments
  post "/comment_preview" => "comments#preview", :as => "comment_preview"

  get "login" => "users#login", :as => "login"
  get "signup" => "users#signup", :as => "signup"
  post "create_login_session" => "users#create_login_session"
  delete "logout" => "users#logout", :as => "logout"

  patch "/course" => "courses#update"
  get "/course" => "courses#index", :as => "course_index"
  post "/course" => "courses#create"
  get "/create_course" => "courses#new", :as => :create_course

  patch "/sick_case" => "sick_cases#update"
  get "/sick_case" => "sick_cases#index", :as => "sick_case_index"
  post "/sick_case" => "sick_cases#create"
  get "/create_sick_case" => "sick_cases#new", :as => :create_sick_case

  patch "/message" => "messages#update"
  get "/message" => "messages#index", :as => "message_index"
  post "/message" => "messages#create"
  get "/create_message" => "messages#new", :as => :create_message

  get "/members" => "users#index", :as => "user_index"
  post "/members" => "users#create"
  put "/crop" => "users#crop", :as => "crop"
  put "/crop_poster" => "courses#crop_poster", :as => "crop_poster"

  get "/:member_name/:course_name/timeline" => "activities#index" , :as => "timeline_course"

  post "/:member_name/:course_name/watch" => "courses#watch"
  post "/:member_name/:course_name/unwatch" => "courses#unwatch"
  get "/:member_name/:course_name/watchers" => "courses#watchers", :as => "course_watchers"

  get "/:member_name/:course_name/collaboration" => "courses#collaboration", :as => "course_collab"

  post "/:member_name/:course_name/add_member" => "courses#add_member", :as => "course_add_member"
  post "/:member_name/:course_name/delete_member" => "courses#delete_member", :as => "course_delete_member"

  resources :courses, :except => :edit do
    get :autocomplete_user_name, :on => :collection
  end

  resources :messages, :except => :edit do
    get :autocomplete_user_name, :on => :collection
  end


  resources :sick_cases, :except => :edit do
    get :autocomplete_user_name, :on => :collection
  end

  get "/showmyinfo" => "basic_infos#edit"
  get "/editmysick" => "basic_infos#edit_sick"
  patch "/update_myinfo" => "basic_infos#update"

  get "/showmyhyper" => "basic_infos#hyper"
  patch "/update_myhyper" => "basic_infos#update_hyper"

  get "/showmydiabetes" => "basic_infos#diabetes"
  patch "/update_mydiabetes" => "basic_infos#update_diabetes"

  get "/showmyhyperlipidemia" => "basic_infos#hyperlipidemia"
  patch "/update_hyperlipidemia" => "basic_infos#update_hyperlipidemia"

  post "/:member_name/follow" => "users#follow"
  post "/:member_name/unfollow" => "users#unfollow"

  get "/account" => "users#edit", :as => "account"
  patch "/account" => "users#update"
  get "/:member_name" => "users#show", :as => "member"
  delete "/:member_name/:course_name" => "courses#destroy"
  get "/:member_name/:message_name/editmessage" => "messages#edit" , :as => "edit_message"
  get "/:member_name/:sick_case_name/editcase" => "sick_cases#edit" , :as => "edit_sick_case"
  get "/:member_name/:course_name/edit" => "courses#edit" , :as => "edit_course"
  get "/:member_name/:course_name(/:position)" => "courses#show", :constraints => {:position => /\d+/} # "/:xxx/:xxx" will conflict with many things, so have to put bottom
  get "/:member_name/:sick_case_name(/:position)/showcase" => "sick_cases#show", :constraints => {:position => /\d+/} # "/:xxx/:xxx" will conflict with many things, so have to put bottom
  get "/:member_name/:course_name/:position/edit" => "courses#edit_video"
  get "/:member_name/:sick_case_name/:position/edithist" => "sick_cases#edit_sick_hist"
  get "/:member_name/:course_name/add_video" => "courses#add_video"
  get "/:member_name/:sick_case_name/add_sick_hist" => "sick_cases#add_sick_hist"
  patch "/update_video/:id" => "videos#update"
  patch "/update_sick_hist/:id" => "sick_hists#update"
  post "/sort_videos" => "videos#sort"
  post "/sort_sicknesses" => "videos#sort"

end
