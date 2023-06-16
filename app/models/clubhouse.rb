class Clubhouse < ApplicationRecord
  has_many :users, dependent: :nullify
  has_many :posts, dependent: :destroy
end
