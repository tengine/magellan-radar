class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.references :user, index: true
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
