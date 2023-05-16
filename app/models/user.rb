class User < ApplicationRecord

validates :tos_agreement, acceptance: { message: "You must accept the Terms of Service" }, on: create

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
end
