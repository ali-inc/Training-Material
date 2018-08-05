class Profile < ApplicationRecord
  has_and_belongs_to_many :sections
  has_and_belongs_to_many :projects
  has_and_belongs_to_many :educations
  has_and_belongs_to_many :certifications
  has_and_belongs_to_many :employments
  has_and_belongs_to_many :customs
  has_many :tokenurls

  validates :summary, presence: true , length: {maximum: 607}
  validates :stream, presence: true
  validates :degree, presence: true , length: {minimum: 5 , maximum:40}
  validates :status, presence: true

end
