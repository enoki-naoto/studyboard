class StudyTime < ApplicationRecord
  
def start_time
  self.studydate
end
  
  belongs_to :user
  #has_many :breaks
  #has_many :restarts
  
end
