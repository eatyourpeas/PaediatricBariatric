class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.string :operation
      t.date :operation_date
      t.text :note
      t.string :complication
      t.references :patient, index: true

      t.timestamps
    end
  end
end
