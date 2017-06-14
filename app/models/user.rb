class User < ApplicationRecord
  has_many :products

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # ^ confirmer par email, ^ bloquer le compte au bout d'un nb dessai, deco les users au bout d'un moment, fb/twitter connect
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
