class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable, :confirmable
  
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true, length: {minimum: 8}
end
