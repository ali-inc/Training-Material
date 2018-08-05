class Custom < ApplicationRecord

    # validating the form inputs; PM-28 PM-31
    validates :body, presence: true, length: { maximum: 600 }
    validates :title, presence: true, length: { minimum: 5, maximum: 40 }

end
