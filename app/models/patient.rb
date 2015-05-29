class Patient < ActiveRecord::Base
	has_many :visits, dependent: :destroy
	has_many :complications, dependent: :destroy
	has_many :operations, dependent: :destroy
	validates :second_name, presence: true
end
