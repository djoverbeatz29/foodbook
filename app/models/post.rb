class Post < ApplicationRecord
  belongs_to :thread
  belongs_to :user
end
