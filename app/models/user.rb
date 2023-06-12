class User < ApplicationRecord
  belongs_to :clubhouse
  belongs_to :post
  belongs_to :comment
end
