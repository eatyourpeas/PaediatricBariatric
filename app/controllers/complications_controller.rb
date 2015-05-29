class ComplicationsController < ApplicationController
	def create
    @patient = Patient.find(params[:patient_id])
    @complication = @patient.complications.create(complication_params)
    redirect_to patient_path(@patient)
  end
 
  def destroy
    @patient = Patient.find(params[:patient_id])
    @complication = @patient.complications.find(params[:id])
    @complication.destroy
    redirect_to patient_path(@patient)
  end
 
  private
    def complication_params
      params.require(:complication).permit(:complication, :complication_date, :note)
    end
end
