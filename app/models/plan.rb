class Plan < ApplicationRecord
  
  validates :user_id, presence: true
  validates :date, presence: true
  
  belongs_to :user
  has_many :todos
  
end
