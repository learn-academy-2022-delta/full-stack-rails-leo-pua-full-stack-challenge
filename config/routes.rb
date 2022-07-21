Rails.application.routes.draw do
get 'blogs' => 'blog#index', as: 'blogs'

get 'blogs/new' => 'blog#new', as: 'entry'

post 'blogs' => 'blog#create'

get 'blogs/:id' => 'blog#show', as: 'blog'

get 'blogs/:id/edit' => 'blog#edit', as: 'edit'

patch 'blogs/:id' => 'blog#update'

delete 'blogs/:id' => 'blog#destroy', as: 'delete_blog'
end



