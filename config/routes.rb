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
    end
end
