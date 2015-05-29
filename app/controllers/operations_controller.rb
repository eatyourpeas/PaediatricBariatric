class OperationsController < ApplicationController
	def create
    @patient = Patient.find(params[:patient_id])
    @operation = @patient.operations.create(operation_params)
    redirect_to patient_path(@patient)
  end
 
  def destroy
    @patient = Patient.find(params[:patient_id])
    @operation = @patient.operations.find(params[:id])
    @operation.destroy
    redirect_to patient_path(@patient)
  end
 
  private
    def operation_params
      params.require(:operation).permit(:operation, :operation_date, :note, :complication)
    end
end
