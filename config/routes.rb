Nublog::Application.routes.draw do
  scope '/v1' do
    resources :posts
  end
end
