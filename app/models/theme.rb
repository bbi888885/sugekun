class Theme < ApplicationRecord
  has_one :start_time
  has_one :stop_time

  require "date"
  require "time"

  validates :theme, presence: true

end
