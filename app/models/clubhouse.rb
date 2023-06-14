class Clubhouse < ApplicationRecord
  has_many :user
  has_many :posts
end
