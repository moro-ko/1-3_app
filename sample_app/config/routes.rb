Rails.application.routes.draw do
  # 各アクション(new,index,show,edit)はlistコントローラーを作成した際にアクション付きで実施したため、自動作成されている
  # ※
  get 'lists/new'
  post "lists" => "lists#create"
  get "lists" => "lists#index"
  # showアクションの編集: :id → /lists/1 や/lists/3 に該当
  # 名前付きルート as:オプションを追加 → "lists#show"の設定をlistとして利用できる という意味になる　indexのlink_toを編集する
  get "lists/:id" => "lists#show" ,as: "list"
  # editアクションの編集： lists/○○/edit の全てのURLが対象になる
  get "lists/:id/edit" => "lists#edit" ,as: "edit_list"
  # updateアクションの作成：フォームとアクションの紐付け
  patch "lists/:id" => "lists#update" ,as: "update_list"
  get '/top' => "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
