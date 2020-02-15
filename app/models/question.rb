class Question < ApplicationRecord
  validates :content, presence: true,length: {in: 1..500}
  validates :title, presence: true,length: {in: 1..500}
  
  belongs_to :category
  belongs_to :user
  has_many :answers, dependent: :destroy
end
