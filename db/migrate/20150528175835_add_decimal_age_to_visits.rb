class AddDecimalAgeToVisits < ActiveRecord::Migration
  
  def change
    add_column :visits, :decimal_age, :decimal
  end
end
  
