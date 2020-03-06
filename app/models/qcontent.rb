class Qcontent < ApplicationRecord
  validates :qsentence, presence: true,length: {in: 1..250}
  validates :choice1, presence: true,length: {in: 1..250}
  validates :choice2, presence: true,length: {in: 1..250}
  validates :choice3, presence: true,length: {in: 1..250}
  
  belongs_to :q
end
