puts "seeding auditions"

Audition.create(actor: "bob", location: "there", phone: 223311, hired: true, role_id: 1)
Audition.create(actor: "mom", location: "here", phone: 332211, hired: false, role_id: 2)
Audition.create(actor: "neee", location: "overThere", phone: 63454, hired: true, role_id: 1)

puts "seeding roles"
Role.create(character_name: 'jojo')
Role.create(character_name: 'pepe')


puts "done seeding"