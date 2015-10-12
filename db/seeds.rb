Patient.delete_all
Facility.delete_all

10.times do
	facility = FactoryGirl.create(:facility)
	10.times do
		patient = FactoryGirl.create(:patient)
		facility.patients << patient
	end
end
