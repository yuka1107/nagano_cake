Rails.application.routes.draw do
  devise_for :admins

  nemespace :admin do
    resources :genres,only: [:create, :index, :edit, :update]
    resources :items,only: [:new, :create, :index, :show, :edit, :update]
  end


  devise_for :publics

end
