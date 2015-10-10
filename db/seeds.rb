p 'Creating users'

big   = User.create! name: 'The Notorious B.I.G.'
snoop = User.create! name: 'Snoop Dogg'
flex  = User.create! name: 'Funkmaster Flex'
ice   = User.create! name: 'Ice Cube'

p 'Creating rooms'

Room.create! title: 'Tha Shiznit', content: 'Poppin, stoppin, hoppin like a rabbit', user: snoop
Room.create! title: 'Hypnotize ', content: 'Hah, sicker than your average Poppa', user: big

p 'Done'
