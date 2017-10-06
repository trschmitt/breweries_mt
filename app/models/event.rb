class Event < ApplicationRecord
  belongs_to :brewery

  validates :start_at, presence: true
  validates :end_at, presence: true

end
