class Question < ApplicationRecord
  validates :content, presence: true
  
  belongs_to :category
  belongs_to :user
  has_many :answers
end
