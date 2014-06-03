class Issue < ActiveRecord::Base
  belongs_to :thermostat

  validates :description, presence: {:message => "Es un campo obligatorio"}
end
