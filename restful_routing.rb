                  Prefix Verb   URI Pattern                    Controller#Action
                  movies GET    /movies(.:format)              movies#index
                         POST   /movies(.:format)              movies#create
               new_movie GET    /movies/new(.:format)          movies#new
              edit_movie GET    /movies/:id/edit(.:format)     movies#edit
                   movie GET    /movies/:id(.:format)          movies#show
                         PATCH  /movies/:id(.:format)          movies#update
                         PUT    /movies/:id(.:format)          movies#update
                         DELETE /movies/:id(.:format)          movies#destroy
                  ratins GET    /ratins(.:format)              ratins#index
                         POST   /ratins(.:format)              ratins#create
               new_ratin GET    /ratins/new(.:format)          ratins#new
              edit_ratin GET    /ratins/:id/edit(.:format)     ratins#edit
                   ratin GET    /ratins/:id(.:format)          ratins#show
                         PATCH  /ratins/:id(.:format)          ratins#update
                         PUT    /ratins/:id(.:format)          ratins#update
                         DELETE /ratins/:id(.:format)          ratins#destroy
                viewings GET    /viewings(.:format)            viewings#index
                         POST   /viewings(.:format)            viewings#create
             new_viewing GET    /viewings/new(.:format)        viewings#new
            edit_viewing GET    /viewings/:id/edit(.:format)   viewings#edit
                 viewing GET    /viewings/:id(.:format)        viewings#show
                         PATCH  /viewings/:id(.:format)        viewings#update
                         PUT    /viewings/:id(.:format)        viewings#update
                         DELETE /viewings/:id(.:format)        viewings#destroy
              home_index GET    /home/index(.:format)          home#index
             users_index GET    /users/index(.:format)         users#index
              users_show GET    /users/show(.:format)          users#show
        new_user_session GET    /users/sign_in(.:format)       users/sessions#new
            user_session POST   /users/sign_in(.:format)       users/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)      users/sessions#destroy
       new_user_password GET    /users/password/new(.:format)  devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
           user_password PATCH  /users/password(.:format)      devise/passwords#update
                         PUT    /users/password(.:format)      devise/passwords#update
                         POST   /users/password(.:format)      devise/passwords#create
cancel_user_registration GET    /users/cancel(.:format)        users/registrations#cancel
   new_user_registration GET    /users/sign_up(.:format)       users/registrations#new
  edit_user_registration GET    /users/edit(.:format)          users/registrations#edit
       user_registration PATCH  /users(.:format)               users/registrations#update
                         PUT    /users(.:format)               users/registrations#update
                         DELETE /users(.:format)               users/registrations#destroy
                         POST   /users(.:format)               users/registrations#create
                    root GET    /                              home#index
