class Category < ApplicationRecord
  validates :name, presence: true,length: {in: 1..100}
  
  has_many :questions
  has_many :tweets
end
