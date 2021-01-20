class Subject < ApplicationRecord
  belongs_to :theme
  
  require "date"
  require "time"

  validates :topic, presence: true
end
