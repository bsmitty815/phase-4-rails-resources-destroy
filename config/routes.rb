Rails.application.routes.draw do
  resources :birds # only: [:index, :show, :create, :update, :destroy]
  patch "/birds/:id/like", to: "birds#increment_likes"

  # add a destory action to DELETE. We are using all five resources so we dont have to use only or specific resources
end
