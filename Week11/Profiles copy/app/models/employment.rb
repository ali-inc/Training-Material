class Employment < ApplicationRecord
  validates :company, length: { minimum: 5 , maximum:40 }, presence: true
  validates :role, length: { minimum: 5 , maximum:40 }, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :description, length: {maximum:600 }, presence: true

  validates :end_date, :timeliness => {:on_or_before => lambda { Date.current }, :type => :date}
  validates :start_date, :timeliness => {:on_or_before => lambda { Date.current }, :type => :date}
  validates_datetime :end_date, :after => :start_date
  validates_datetime :start_date, :before => :end_date
end
