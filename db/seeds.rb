# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

residents = Resident.create([{ id_number: 123207, first_name: 'Lance Gabriel', last_name: 'Putong', middle_initial: 'L', year: 3, course: 'BS MIS-MSCS', email: 'lance.putong@obf.ateneo.edu', mobile: '09175046124', dorm_scholar: 0 }]);

rooms = Room.create([{ room_number: 'N101', building: 'UD-North' }, { room_number: 'N102', building: 'UD-North' }])