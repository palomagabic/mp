class User < ApplicationRecord

  has_one :institution
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   geocoded_by :address
   after_validation :geocode

   accepts_nested_attributes_for :institution

end
