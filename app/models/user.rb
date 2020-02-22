class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 15}
  validates :email, presence: true, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :password,length: {in: 8..32}, format: {with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i} 
  validates :password_confirmation,length: {in: 8..32}
  
  has_many :plans
  has_many :todos
  has_many :questions
  has_many :answers
  #has_many :plan_todos, through: :plans, source: 'todo'
  has_many :tweets
  has_many :study_times
  has_many :qs

  has_secure_password
end
