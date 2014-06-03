class Issue < ActiveRecord::Base
  belongs_to :thermostat

  validates :description, presence: {:message => "Es un campo obligatorio"}

  def change_status
   self.status = 'CANCELADO'
   self.save!
end

end
