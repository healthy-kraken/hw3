Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "places#index"

  resources "places" do
    collection do
      get :forget
    end
    resources "entries"
  end

end
