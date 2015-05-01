Rails.application.routes.draw do

  get 'welcome/splash'

  get 'blogs/samplejson'

  get 'blogs/ajax'

  get 'users/show_users'

  root'welcome#splash'

  get 'blogs/about_me'

  get 'blogs/contact_me'

  get 'blogs/home'

  post 'blogs/new'

  post 'blog_posts/new'

  get 'welcome/projects'

  get 'welcome/galapagos'

  match '/contacts', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]

  devise_for :users

  resources :posts do
      resources :comments
    end

  resources :blog_comments

  resources :blog_posts

  resources :blogs

  
end
