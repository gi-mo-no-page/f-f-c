class Comic < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :posts
  belongs_to :user
  belongs_to_active_hash :genre
  belongs_to_active_hash :magazine
  has_one_attached :image

  def self.search(search)
    if search != ""
      Comic.where('name LIKE(?)', "%#{search}%")
    else
      Comic.all
    end
  end
end
