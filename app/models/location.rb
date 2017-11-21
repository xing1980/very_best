class Location < ApplicationRecord
  # Direct associations

  has_many   :venues,
             :foreign_key => "locations_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

end
