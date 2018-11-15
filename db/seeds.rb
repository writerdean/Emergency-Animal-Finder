Incident.destroy_all
LostAnimal.destroy_all
FoundAnimal.destroy_all
User.destroy_all

bushfire = Incident.create(name: 'Bush Fire', category: 'fire')
campfire = Incident.create(name: 'Camp Fire', category: 'fire')
desertfire = Incident.create(name: 'Desert Fire', category: 'fire')
forestfire = Incident.create(name: 'Forest Fire', category: 'fire')
nightonfire = Incident.create(name: 'Night on Fire', category: 'fire')

found = FoundAnimal.create(species: 'cat', user_id: 1, incident_id: 2, date_found: '11/11/2017', location_found: 'Geelong', location_current: 'St Kilda', image: 'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&h=350', health_status: 'healthy', tags: ['siamese', 'black'])
found2 = FoundAnimal.create(species: 'dog', user_id: 2, incident_id: 3, date_found: '11/11/2017', location_found: 'Kensington', location_current: 'Brighton', image: 'https://images.pexels.com/photos/356378/pexels-photo-356378.jpeg?auto=compress&cs=tinysrgb&h=350', health_status: 'healthy', tags: ['dog', 'small'])
found3 = FoundAnimal.create(species: 'chicken', user_id: 3, incident_id: 4, date_found: '11/11/2017', location_found: 'Sunshine', location_current: 'Frankston', image: 'https://i.pinimg.com/originals/33/3f/a6/333fa65369cb1ead7545ba027a764471.jpg', health_status: 'injured', tags: ['chicken'])
found4 = FoundAnimal.create(species: 'turtle', user_id: 4, incident_id: 5, date_found: '11/11/2017', location_found: 'Melbourne', location_current: 'Werribee', image: 'https://cdn.newsapi.com.au/image/v1/fb21b0a8b881448a2fc5f8011ce320b6', health_status: 'severe', tags: ['small', 'turtle'])
found5 = FoundAnimal.create(species: 'cat', user_id: 1, incident_id: 1, date_found: '11/11/2017', location_found: 'Lara', location_current: 'Surrey Hills', image: 'http://r.ddmcdn.com/s_f/o_1/cx_462/cy_245/cw_1349/ch_1349/w_720/APL/uploads/2015/06/caturday-shutterstock_149320799.jpg', health_status: 'injured', tags: ["white", "cat"])

lost = LostAnimal.create(species: 'cat', user_id: 1, incident_id: 2, date_lost: '11/11/2017', location_lost: 'Geelong', tags: ['cat', 'small'], claim_status: 'Reunited', image_url: 'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&h=350')
lost3 = LostAnimal.create(species: 'chicken', user_id: 2, incident_id: 2, date_lost: '11/11/2017', location_lost: 'Sunshine', tags: ['chicken'], claim_status: true, image_url: 'https://i.pinimg.com/originals/33/3f/a6/333fa65369cb1ead7545ba027a764471.jpg')
lost4 = LostAnimal.create(species: 'horse', user_id: 3, incident_id: 4, date_lost: '11/11/2017', location_lost: 'Bentleigh', tags: ['horse', 'brown'], claim_status: false, image_url: 'https://images.pexels.com/photos/635499/pexels-photo-635499.jpeg?auto=compress&cs=tinysrgb&h=350')
lost5 = LostAnimal.create(species: 'bird', user_id: 4, incident_id: 5, date_lost: '11/11/2017', location_lost: 'Surry Hills', tags: ['multicolour', 'bird'], claim_status: false, image_url: 'https://images.pexels.com/photos/326900/pexels-photo-326900.jpeg?auto=compress&cs=tinysrgb&h=350')

admin = User.create(name: 'Bob', email: 'bob@gmail.com', password: 'bob')
loser = User.create(name: 'Sally', email: 'sally@gmail.com', password: 'sally')
founder = User.create(name: 'Ben', email: 'ben@gmail.com', password: 'ben')
surfer = User.create(name: 'Taylor', email: 'taylor@gmail.com', password: 'taylor', admin_privilege: true)
