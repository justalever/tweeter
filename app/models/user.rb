class User < ApplicationRecord
  pay_customer

  has_person_name

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets

  validates_uniqueness_of :username

  has_one_attached :profile_image
end
