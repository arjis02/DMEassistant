Order.delete_all
Admission.delete_all
Patient.delete_all
Facility.delete_all

10.times do
	facility = FactoryGirl.create(:facility)
	10.times do
		patient = FactoryGirl.create(:patient)
		admission = Admission.create(patient_id: patient.id, facility_id: facility.id)
	end
end
