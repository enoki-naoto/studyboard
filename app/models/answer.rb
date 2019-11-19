class Answer < ApplicationRecord
  validates :ans, presence: true
  
  belongs_to :question
end
