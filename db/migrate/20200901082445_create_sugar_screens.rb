class CreateSugarScreens < ActiveRecord::Migration[6.0]
  def change
    create_table :sugar_screens do |t|
      t.integer :user_id
      t.integer :result
      t.datetime :date

      t.timestamps
    end
  end
end
