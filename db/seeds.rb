require 'faker'

evidence = ['bloody knife', 'toothpick', 'Glock 19',
						'rope', '1lb of marijuana', 'crime scene photos',
						'cell phone records', 'getaway car', 'mask',
						'$1.2 million cash', 'lock-picking kit', 'surveillance footage']

cases = (1..30).to_a


Lawyer.create(:name => "Park Silkenson")
Case.create(:case_number => 1)


LawyerType.create(:name => 'defense')
LawyerType.create(:name => 'prosecution')


10.times do
	judge = Judge.create(:name => Faker::Name.name)
end


30.times do |i|
	crim_case = Case.create(:case_number => (i + 1),
										 :judge_id => rand(1..10))	
end

40.times do
	lawyer = Lawyer.create(:name => Faker::Name.name,
												 :phone => Faker::PhoneNumber.phone_number,
												 :lawyer_type_id => rand(1..2))
	lawyer.cases << Case.find(rand(1..30))
end

50.times do
	defendant = Defendant.create(:name => Faker::Name.name)
	defendant.cases << Case.find(rand(1..30))
end

20.times do
	Evidence.create(:name => evidence[rand(0..11)],
									:description => Faker::Lorem.sentence(rand(3..5)),
									:case_id => cases.sample)
end

50.times do
	user = User.new(:name => Faker::Name.name, :email => Faker::Internet.email)
	user.password = Faker::Lorem.word
	user.save
end

# lawyer.cases.create :case_number => 1
# lawyer.cases << Case.find(1)