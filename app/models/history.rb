class History < ActiveRecord::Base
  belongs_to :user

  def self.add_history(location)
    history = History.new
    history[:user_id] = location.user_id
    history[:latitude] = location.latitude
    history[:longitude] = location.longitude
    history.save
  end
end
