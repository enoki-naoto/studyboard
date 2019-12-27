class Tweet < ApplicationRecord
  validates :text, presence: true,length: {in: 1..100}
  
  belongs_to :user
  belongs_to :category
  
end
