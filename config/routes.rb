Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      with_options only: %i[index author] do
        resources :authors
      end
    end
  end

end
