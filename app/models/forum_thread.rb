class ForumThread < ApplicationRecord
  belongs_to :forum
  has_many :posts
end
