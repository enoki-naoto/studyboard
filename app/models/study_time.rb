class StudyTime < ApplicationRecord
  
def start_time
  self.studydate
end
  
  belongs_to :user
  belongs_to :plan
  #has_many :breaks
  #has_many :restarts
  
end
