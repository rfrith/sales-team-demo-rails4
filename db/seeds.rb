# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sr1 = SalesRep.create(unique_id: 'Athens Guy', first_name: 'Ryan', last_name: 'Frith')
sr2 = SalesRep.create(unique_id: 'Atlanta Guy', first_name: 'Chris', last_name: 'Combs')
sr3 = SalesRep.create(unique_id: 'Augusta Guy', first_name: 'Adam', last_name: 'Lyle')
sr4 = SalesRep.create(unique_id: 'Macon Guy', first_name: 'Robert', last_name: 'Wiktorski')
sr5 = SalesRep.create(unique_id: 'Savannah Guy', first_name: 'Jimmy', last_name: 'Lipham')
sr6 = SalesRep.create(unique_id: 'Charleston Guy', first_name: 'Hajime', last_name: 'Uchiyama')

l1 = Location.create(name: 'Athens Office', address: '123 Test St', address2: 'Suite 104', city: 'Athens', state: 'GA', zip: '12345')
l2 = Location.create(name: 'Atlanta Office', address: '234 Test St', address2: '', city: 'Atlanta', state: 'GA', zip: '23456')
l3 = Location.create(name: 'Augusta Office', address: '456 Test St', address2: '', city: 'Augusta', state: 'GA', zip: '34566')
l4 = Location.create(name: 'Macon Office', address: '789 Test St', address2: 'Suite 104', city: 'Macon', state: 'GA', zip: '45678')
l5 = Location.create(name: 'Savannah Office', address: '980 Test St', address2: '', city: 'Savanah', state: 'GA', zip: '56789')
l6 = Location.create(name: 'Charleston Office', address: '801 Test St', address2: '', city: 'Charleston', state: 'SC', zip: '67890')

sg1 = SalesGroup.create(unique_id: 'Top Sales', description: 'Top sales team')
sg2 = SalesGroup.create(unique_id: 'Mid Sales', description: 'Average sales team')
sg3 = SalesGroup.create(unique_id: 'Low Sales', description: 'Lowest sales team')


sr1.location = l1
sr2.location = l2
sr3.location = l3
sr4.location = l4
sr5.location = l5
sr6.location = l6


sg1.sales_reps << sr1
sg2.sales_reps << sr2
sg3.sales_reps << sr3
sg1.sales_reps << sr4
sg1.sales_reps << sr5
sg3.sales_reps << sr6

sr1.save
sr2.save
sr3.save
sr4.save
sr5.save
sr6.save

sg1.save
sg2.save
sg3.save