class Q < ApplicationRecord
  validates :qtitle, presence: true,length: {in: 1..250}
  
  belongs_to :category
  belongs_to :user
  has_many :qcontents
end
