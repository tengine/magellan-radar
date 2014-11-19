class Location < ActiveRecord::Base
  belongs_to :user

  after_save :add_history

  def add_history
    History.add_history(self)
  end
end
