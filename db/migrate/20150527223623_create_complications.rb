class CreateComplications < ActiveRecord::Migration
  def change
    create_table :complications do |t|
      t.string :complication
      t.date :complication_date
      t.text :note
      t.references :patient, index: true

      t.timestamps
    end
  end
end
