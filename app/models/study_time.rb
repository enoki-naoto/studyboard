class StudyTime < ApplicationRecord
  
  belongs_to :user
  has_many :breaks
  
end
