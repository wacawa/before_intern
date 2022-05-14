class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable, :confirmable

  has_many :articles, dependent: :destroy
  
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
end
