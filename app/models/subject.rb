class Subject < ApplicationRecord
  belongs_to :theme
  
  validates :topic, presence: true
end
