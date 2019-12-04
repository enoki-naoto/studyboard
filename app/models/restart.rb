class Restart < ApplicationRecord
  belongs_to :user
  belongs_to :study_time
  belongs_to :break
end
