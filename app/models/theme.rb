class Theme < ApplicationRecord
  has_one :start_time
  has_one :stop_time
  has_many :subjects
  accepts_nested_attributes_for :subjects

  require "date"
  require "time"

  validates :title, presence: true, uniqueness: true
end
