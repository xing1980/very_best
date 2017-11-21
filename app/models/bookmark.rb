class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :venues,
             :class_name => "Venue",
             :counter_cache => true

  belongs_to :dishes,
             :class_name => "Dish",
             :counter_cache => true

  # Indirect associations

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
