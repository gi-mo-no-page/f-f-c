class Post < ApplicationRecord
  belongs_to :comic
  belongs_to :user
end
