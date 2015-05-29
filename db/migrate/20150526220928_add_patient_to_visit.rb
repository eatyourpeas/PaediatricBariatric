class AddPatientToVisit < ActiveRecord::Migration
  def change
    add_reference :visits, :patient, index: true
  end
end
