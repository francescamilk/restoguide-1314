Rails.application.routes.draw do
    resources :restaurants do
        collection do
            # Custom index (read all with filters)
            # get 'restaurants/top', to: 'restaurants#top'
            get 'top'
        end

        member do
            # Custom show (read one - custom)
            # get 'restaurants/:id/chef', to: 'restaurants#chef'
            get 'chef'
        end

        # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new'
        # post 'restaurants/:restaurant_id/reviews',    to: 'reviews#create'
        resources :reviews, only: [ :new, :create ]
    end

    resources :reviews, only: :destroy
end
