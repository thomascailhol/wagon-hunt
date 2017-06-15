class User < ApplicationRecord
  has_many :products
  has_attachment :avatar

  has_many :upvotes
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # ^ confirmer par email, ^ bloquer le compte au bout d'un nb dessai, deco les users au bout d'un moment, fb/twitter connect
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def voted_for?(product)
    product.upvotes.where(user: self).any?
  end
end
