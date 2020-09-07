class CreateVaccinationRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :vaccination_records do |t|
      t.integer :user_id
      t.boolean :tetanus, default: false
      t.boolean :flu, default: false
      t.boolean :pneumonia, default: false
      t.boolean :shingles, default: false

      t.timestamps
    end
  end
end
