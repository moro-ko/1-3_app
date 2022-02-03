Rails.application.routes.draw do
  # 各アクション(new,index,show,edit)はlistコントローラーを作成した際にアクション付きで実施したため、自動作成されている
  # ※
  get 'lists/new'
  post "lists" => "lists#create"
  get 'lists/index'
  get 'lists/show'
  get 'lists/edit'
  get '/top' => "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
