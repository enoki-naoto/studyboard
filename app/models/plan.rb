class Plan < ApplicationRecord
  
  def start_time
    self.plandate
  end
  
  validates :user_id, presence: true
  validates :plandate, presence: true
  
  belongs_to :user
  has_many :todos
  has_many :study_time

   
  
end
