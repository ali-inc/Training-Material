class Post < ApplicationRecord
  has_many :comments

  validates :title, :body, presence: true
  validates :title, length: {message: "must contain 10 characters or more", minimum: 10}
end
