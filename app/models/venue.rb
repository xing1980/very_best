class Venue < ApplicationRecord
  # Direct associations

  belongs_to :locations,
             :class_name => "Location",
             :counter_cache => true

  has_many   :bookmarks,
             :foreign_key => "venues_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :bookmarks,
             :source => :user

  has_many   :dishes,
             :through => :bookmarks,
             :source => :dishes

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
