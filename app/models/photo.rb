class Photo < ActiveRecord::Base
  validates :url, :delete_time, presence: true

  belongs_to :album
end
