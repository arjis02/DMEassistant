Facility.delete_all
Professional.delete_all
Provider.delete_all
Patient.delete_all
Order.delete_all
Wheelchair.delete_all
Bed.delete_all
Employment.delete_all

5.times do
	facility = FactoryGirl.create(:facility)
	5.times do
		professional = FactoryGirl.create(:professional)
		facility.professionals << professional
	end	
end

5.times do
	provider = FactoryGirl.create(:provider)
end