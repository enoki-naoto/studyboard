class Answer < ApplicationRecord
  validates :ans, presence: true,length: {in: 1..500}
  
  belongs_to :question
  belongs_to :user
end
