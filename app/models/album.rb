class Album < ActiveRecord::Base
  validates :name, :delete_time, presence: true

  has_many :photos
end
