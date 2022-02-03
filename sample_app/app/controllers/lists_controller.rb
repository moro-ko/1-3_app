class ListsController < ApplicationController
  def new
    # viewへ渡すためのインスタンス変数に空のmodelオブジェクトを生成する
    @list = List.new
  end
  
  # createアクションの作成
  def create
    # 1.&2. データを受け取り新規登録するためのインスタンス作成
    # 上記newアクションの時とは異なり、変数listの前に＠がついていない→ここではviewファイルへの受け渡しが不要なため
    # 「ローカル変数」で設定しているため
    list = List.new(list_params)
    
    # 3.データをデータベースに保存するためのsaveメソッド実行
    list.save
    
    # 4.トップ画面へリダイレクト: redirect_to 画面遷移するためのメソッド
    redirect_to "/top"
  end

  def index
  end

  def show
  end

  def edit
  end
  
  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
  
end
