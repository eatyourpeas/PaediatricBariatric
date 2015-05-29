class PatientsController < ApplicationController
	def index
		@patients = Patient.all
	end

	def new
		@patient = Patient.new
	end

	def create
		@patient = Patient.new(patient_params)

		if @patient.save
			redirect_to @patient
		else
			render 'new'
		end
	end

	def show
		@patient = Patient.find(params[:id])
	end

	def edit
		@patient = Patient.find(params[:id])
	end

	def update
		@patient = Patient.find(params[:id])

		if @patient.update(patient_params)
			redirect_to @patient
		else
			render 'edit'
		end
	end

	def destroy
		@patient = Patient.find(params[:id])
		@patient.destroy

		redirect_to patients_path
	end

	private
		def patient_params
			params.require(:patient).permit(:first_name, :second_name, :sex, :nhs_number, :local_hospital_number, :date_of_birth, :preop_bmi, :ethnicity, :post_code, :english_as_foreign_language, :carers_allowance, :maternal_bmi, :paternal_bmi, :maternal_occupation, :paternal_occupation)
		end
end
