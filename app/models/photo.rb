class Photo < ActiveRecord::Base
  validates :url, :delete_time, :delete_hash, presence: true

  belongs_to :album

  def upload_image(image_url)
    imgur = Imgur.new
    link_delete_hash = imgur.post_image(image_url)
  end
end
