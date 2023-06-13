class Post < ApplicationRecord
  belongs_to :user
  has_many :comment
  belongs_to :clubhouse
end
