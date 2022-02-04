class List < ApplicationRecord
  # Listモデルに画像を扱うためのimageカラムを追記
  has_one_attached :image
  
  # バリデーションを設定：入力必須指定項目の入力有無、入力データの長さ、数値の範囲など、入力データの存在をチェック
  validates :title, presence: true
  validates :body, presence: true
  validates :image, presence: true
end
