class CreateGoodVibes < ActiveRecord::Migration[5.0]
  def change
    create_table :good_vibes do |t|
      t.string :ReplayName
      t.string :ReplayDate

      t.timestamps
    end
  end
end
