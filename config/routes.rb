Nublog::Application.routes.draw do
  scope '/v1' do
    devise_for :users
    resources :posts
  end
end
