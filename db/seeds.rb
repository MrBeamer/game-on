require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database now...'
Game.destroy_all
# User.destroy_all
puts 'Database clean ✅'

# User.create!(
#   email: "easy@email.com",
#   password: "password"
# )

Game.create!(
    title: "World of Warcraft",
    category: "Massively multiplayer online role-playing game",
    description: "World of Warcraft is a massively multiplayer online role-playing game released in 2004 by Blizzard Entertainment. It is the fourth released game set in the Warcraft fantasy universe.",
    price_per_day: 7,
    condition: "used",
    user: User.last

  )

  Game.create!(
    title: "Fortnite",
    category: "Survival",
    description: "Fortnite is an online video game developed by Epic Games and released in 2017. It is available in three distinct game mode versions that otherwise share the same general gameplay and game engine",
    price_per_day: 2,
    condition: "new",
    user: User.last
  )

  Game.create!(
    title: "Minecraft",
    category:  "OpenWorldSpiel",
    description: "Minecraft is a sandbox video game developed by Mojang. The game was created by Markus Persson in the Java programming language.",
    price_per_day: 3,
    condition: "used",
    user: User.last
  )

  Game.create!(
    title: "Cyberpunk 2077",
    category: "Open World",
    description: "Cyberpunk 2077 is an upcoming action role-playing video game developed and published by CD Projekt. It is scheduled to be released for Microsoft Windows, PlayStation 4, PlayStation 5, Stadia, Xbox One, and Xbox Series X/S on 10 December 2020.",
    price_per_day: 4,
    condition: "new",
    user: User.last
  )

  Game.create!(
    title: "Call of Duty: Black Ops Cold War",
    category: "First-person shooter",
    description: "Call of Duty: Black Ops Cold War is a 2020 first-person shooter video game developed by Treyarch and Raven Software and published by Activision. It is the sixth installment in the Black Ops series, and the seventeenth installment in the overall Call of Duty series.",
    price_per_day: 4,
    condition: "used",
    user: User.last
  )

  Game.create!(
    title: "Counter-Strike",
    category: "First-person shooter",
    description: "Counter-Strike is a series of multiplayer first-person shooter video games in which teams of terrorists battle to perpetrate an act of terror while counter-terrorists try to prevent it. The series began on Windows in 1999 with the release of the first game, Counter-Strike.",
    price_per_day: 4,
    condition: "new",
    user: User.last
  )

  Game.create!(
    title: "League of Legends",
    category: "Multiplayer online battle arena",
    description: "League of Legends is a 2009 multiplayer online battle arena video game developed and published by Riot Games for Microsoft Windows and macOS. Originally inspired by Defense of the Ancients, the game has followed a freemium model since its release on October 27, 2009.",
    price_per_day: 4,
    condition: "used",
    user: User.last
  )

  Game.create!(
    title: "The Sims",
    category: "Life simulation game",
    description: "The Sims is a strategic life simulation video game developed by Maxis and published by Electronic Arts in 2000. It is a simulation of the daily activities of one or more virtual people in a suburban household near a fictional city. Players control customizable Sims as they pursue career and relationship goals.",
    price_per_day: 4,
    condition: "new",
    user: User.last
  )

  Game.create!(
    title: "Pong",
    category: "Sports video game",
    description: "Pong is a table tennis-themed arcade video game, featuring simple two-dimensional graphics, manufactured by Atari and originally released in 1972.",
    price_per_day: 8,
    condition: "used",
    user: User.last
  )

  Game.create!(
    title: "Tetris",
    category: "Tile-matching video game",
    description: "Tetris is a tile-matching video game created by Russian software engineer Alexey Pajitnov in 1984. It has been published by several companies, most prominently during a dispute over the appropriation of the rights in the late 1980s.",
    price_per_day: 6,
    condition: "new",
    user: User.last
  )

  puts "Complete, created #{Game.count} games."
