Rails.application.routes.draw do

  match('/', {:via => :get, :to => 'foods#index'})
  match('recipes', {:via => :get, :to => 'recipes#index'})
  match('recipes', {:via => :post, :to => 'recipes#create'})
  match('recipes/new', {:via => :get, :to => 'recipes#new'})
  match('recipes/:id', {:via => :get, :to => 'recipes#show'})
  match('recipes/:id', {:via => :delete, :to => 'recipes#destroy'})
  match('recipes/:id/edit', {:via => :get, :to => 'recipes#edit'})
  match('recipes/:id', {:via => [:patch, :put], :to => 'recipes#update'})
  # match('recipes/:id/tag', {:via => })

  match('tags', {:via => :get, :to => 'tags#index'})
  match('tags', {:via => :post, :to => 'tags#create'})
  match('tags/new', {:via => :get, :to => 'tags#new'})
  match('tags/:id', {:via => :get, :to => 'tags#show'})
  match('tags/:id', {:via => :delete, :to => 'tags#destroy'})
  match('tags/:id/edit', {:via => :get, :to => 'tags#edit'})
  match('tags/:id', {:via => [:patch, :put], :to => 'tags#update'})


  match('favorites', {:via => :get, :to => 'favorites#index'})
  match('favorites', {:via => :post, :to => 'favorites#create'})
  match('favorites/new', {:via => :get, :to => 'favorites#new'})
  match('favorites/view',{:via => :get, :to => 'favorites#view'})
  match('favorites/:id', {:via => :get, :to => 'favorites#show'})
end
