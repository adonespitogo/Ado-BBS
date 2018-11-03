Adobbs::Engine.routes.draw do

  resources :post, defaults: {format: :json} do
    resources :comments, defaults: {format: :json}
  end

end
