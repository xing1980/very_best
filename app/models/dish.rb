class Dish < ApplicationRecord
  # Direct associations

  belongs_to :cuisine,
             :counter_cache => true

  has_many   :bookmarks,
             :foreign_key => "dishes_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :bookmarks,
             :source => :user

  has_many   :venues,
             :through => :bookmarks,
             :source => :venues

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
