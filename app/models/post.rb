class Post < ApplicationRecord
  #has_one :calorie
  belongs_to :user
  #belongs_to :category
  #has_many :comments
end
