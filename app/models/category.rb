class Category < ApplicationRecord
  validates :name, presence: true,length: {in: 1..100}
  
  has_many :questions, dependent: :destroy
  has_many :tweets, dependent: :destroy
end
