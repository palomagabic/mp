class User < ApplicationRecord

  belongs_to :institution
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   geocoded_by :address
   after_validation :geocode

   accepts_nested_attributes_for :institution

end
