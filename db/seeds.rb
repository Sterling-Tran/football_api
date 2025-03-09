require 'faker'

def create_player
  puts "Creating player..."

  10.times do
    Player.create(
      name: Faker::Name.name,
      position: Faker::Sports::Football.position,
      number: Faker::Number.number(digits: 2)
    )
    end

  puts "Players created!"
end

def create_matches
  puts "creating matches..."

  5.times do
    team1 = Faker::Sports::Football.team
    team2 = Faker::Sports::Football.team
    while team1 == team2
      team2 = Faker::Sports::Football.team
    end
    Match.create(
      team1: team1,
      team2: team2,
      score1: Faker::Number.between(from: 0, to: 5),
      score2: Faker::Number.between(from: 0, to: 5),
      stadium_id: Stadium.all.sample.id
    )
  end

  puts "matches created!"
end

def create_stadium
  puts "creating stadiums..."

  3.times do
    Stadium.create(
      name: Faker::Sports::Football.position,
      capacity: Faker::Number.between(from: 10000, to: 90000),
      location: Faker::Address.city
    )
  end
  puts "stadiums created!"
end

def create_referee
  puts "creating referees..."

  3.times do
    Referee.create(
      name: Faker::Name.name,
      age: Faker::Number.between(from: 18, to: 50),
      experience: Faker::Number.between(from: 0, to: 20)
    )
  end

  puts "referees created!"
end

unless Player.any?
  create_player
end

unless Stadium.any?
  create_stadium
end

unless Referee.any?
  create_referee
end

create_matches
