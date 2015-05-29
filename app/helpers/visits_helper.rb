module VisitsHelper

def self.decimal_age(clinic_date, date_of_birth)
	  	days = (clinic_date - date_of_birth).to_i
	  	decimal_age = days / 365.25
		return VisitsHelper.decimal_age
end


def decimal_age(clinic_date, date_of_birth)
	return self.decimal_age(clinic_date, date_of_birth)
end



end