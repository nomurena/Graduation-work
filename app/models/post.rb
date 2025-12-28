class Post < ApplicationRecord
    has_many_attached :images
    validates :title, presence: { message: "タイトルを入力してください" }
    validates :body, presence: { message: "メモを入力してください" }
    validate :images_content_type

    private

  def images_content_type
    images.each do |image|
      unless image.content_type.in?(%w[image/jpeg image/png image/webp])
        errors.add(:images, "はJPEG・PNG形式の画像のみ対応しています")
      end
    end
  end

end
