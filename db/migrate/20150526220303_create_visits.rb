class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.date :visit_date
      t.decimal :height_in_cm
      t.decimal :weight_in_kg
      t.boolean :post_op, :default => false

      t.timestamps
    end
  end
end
