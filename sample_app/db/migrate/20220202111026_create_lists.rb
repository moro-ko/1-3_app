class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      # migrationファイルに、テーブルを作成する（※記述しただけでは作成されないので注意）
      # ※ migrationファイルからデータベース上にテーブルを作成する必要がある→「rails db:migrate」を実行
      
      # t.データ型名 :カラム名　にて記述
      t.string :title
      t.string :body
      
      t.timestamps
    end
  end
end
