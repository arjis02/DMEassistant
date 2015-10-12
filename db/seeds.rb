Patient.delete_all

10.times do
	FactoryGirl.create(:patient)
	FactoryGirl.create(:facility)
end
