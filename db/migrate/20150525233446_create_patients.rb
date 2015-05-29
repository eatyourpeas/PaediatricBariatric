class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :second_name
      t.string :nhs_number
      t.date :date_of_birth
      t.decimal :preop_bmi

      t.timestamps
    end
  end
end
