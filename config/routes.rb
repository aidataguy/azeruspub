Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :users
  resources :posts do
    collection do
  	 	get :autocomplete
  	end
  end
  resources :projects
  resources :contacts, only: [:create, :new]
  get 'tags/:tag', to: 'posts#index', as: :tag
  get 'welcome/index'
  root 'welcome#index'

  get '*path' => redirect('/')

end
