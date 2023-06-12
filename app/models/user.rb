class User < ApplicationRecord
  has_many :clubhouse
  has_many :post
  has_many :comment
end
