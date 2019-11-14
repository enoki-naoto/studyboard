class Todo < ApplicationRecord
  
  validates :plan_id, presence: true
  validates :user_id, presence: true
  validates :list, presence: true
  
  belongs_to :plan
  belongs_to :user
end
