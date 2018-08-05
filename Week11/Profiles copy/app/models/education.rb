class Education < ApplicationRecord

  # validating the form inputs; PM-28 PM-31
  validates :description, presence: true, length: { maximum: 600 }
  validates :institution, :course, presence: true, length: { minimum: 5, maximum: 75 }
  validates :start_date, :end_date, presence: true

  validates :end_date, :timeliness => {:on_or_before => lambda { Date.current }, :type => :date}
  validates :start_date, :timeliness => {:on_or_before => lambda { Date.current }, :type => :date}
  validates_datetime :end_date, :after => :start_date
  validates_datetime :start_date, :before => :end_date
end
