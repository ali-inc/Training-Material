class Project < ApplicationRecord
   validates :title, length: { minimum: 5 , maximum:40 }, presence: true
   validates :description, length: {maximum:600 }, presence: true
end
