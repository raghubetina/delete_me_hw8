class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :photos

  has_many :comments

  has_many :favorites

  has_many :favorite_photos, :through => :favorites, :source => :photo
end
