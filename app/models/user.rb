class User < ApplicationRecord
  has_many :catches
  has_many :pokemons, through: :catches
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: {guest: 0, basic: 1, admin: 2}
end
