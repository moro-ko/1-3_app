class List < ApplicationRecord
  # Listモデルに画像を扱うためのimageカラムを追記
  has_one_attached :image
end
