class Post < ApplicationRecord
    has_many_attached :images
    validates :title, presence: { message: "タイトルを入力してください" }
    validates :body, presence: { message: "メモを入力してください" }
end
