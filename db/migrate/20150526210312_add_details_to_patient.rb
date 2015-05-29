class AddDetailsToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :post_code, :string
    add_column :patients, :local_hospital_number, :string
    add_column :patients, :ethnicity, :string
    add_column :patients, :english_as_foreign_language, :boolean, :default => false
    add_column :patients, :carers_allowance, :boolean, :default => false
    add_column :patients, :maternal_occupation, :string
    add_column :patients, :paternal_occupation, :string
    add_column :patients, :maternal_bmi, :decimal
    add_column :patients, :paternal_bmi, :decimal
  end
end
