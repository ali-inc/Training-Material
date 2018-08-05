class Book < ApplicationRecord
  belongs_to :author
  has_many :chapters
  has_many :paragraphs, :through => :chapters
end
