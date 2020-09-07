class CreateBpScreens < ActiveRecord::Migration[6.0]
  def change
    create_table :bp_screens do |t|
      t.integer :user_id
      t.integer :systolic_pressure
      t.integer :diastolic_pressure
      t.datetime :date

      t.timestamps
    end
  end
end
