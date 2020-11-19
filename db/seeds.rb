require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require "open-uri"
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database now...'
Rental.destroy_all
Game.destroy_all
User.destroy_all
puts 'Database clean ✅'

# dicaprio = User.create!(
#   name: "L.DiCaprio",
#   address: "10243  Berlin, Am Wriezener Bahnhof",
#   email: "dicaprio@email.com",
#   password: "password"
# )

User.create!(
  name: "C.Nolan",
  address: "10243  Berlin, Holzmarktstraße 25",
  email: "nolan@email.com",
  password: "password"
)

file = URI.open('http://s1.picswalls.com/wallpapers/2014/09/22/free-world-of-warcraft-wallpaper_044601312_250.jpg')

wow = Game.create!(
    title: "World of Warcraft",
    category: "Massively multiplayer online role-playing game",
    description: "World of Warcraft is a massively multiplayer online role-playing game released in 2004 by Blizzard Entertainment. It is the fourth released game set in the Warcraft fantasy universe.",
    price_per_day: 7,
    condition: "used",
    user: User.last
  )
  wow.photo.attach(io: file, filename: 'wow.jpg', content_type: 'image/jpg')



file = URI.open('https://cdn.guidingtech.com/imager/assets/214578/Top-N-Cool-Fortnite-Wallpapers-HD-and-4K-for-PC-3_4d470f76dc99e18ad75087b1b8410ea9.webp')

fortnite = Game.create!(
    title: "Fortnite",
    category: "Survival",
    description: "Fortnite is an online video game developed by Epic Games and released in 2017. It is available in three distinct game mode versions that otherwise share the same general gameplay and game engine",
    price_per_day: 2,
    condition: "new",
    user: User.last
  )
fortnite.photo.attach(io: file, filename: 'fortnite.jpg', content_type: 'image/jpg')


file = URI.open('https://www.teahub.io/photos/full/59-591513_minecraft-video-games-pixels-wallpapers-hd-desktop-minecraft.jpg')

minecraft = Game.create!(
    title: "Minecraft",
    category:  "OpenWorldSpiel",
    description: "Minecraft is a sandbox video game developed by Mojang. The game was created by Markus Persson in the Java programming language.",
    price_per_day: 3,
    condition: "used",
    user: User.last
  )

minecraft.photo.attach(io: file, filename: 'minecraft.jpg', content_type: 'image/jpg')


# file = URI.open('https://images.unsplash.com/photo-1530692228265-084b21566b12?ixlib=rb-1.2.1&auto=format&fit=crop&w=1252&q=80')

# cyberpunk = Game.create!(
#     title: "Cyberpunk 2077",
#     category: "Open World",
#     description: "Cyberpunk 2077 is an upcoming action role-playing video game developed and published by CD Projekt. It is scheduled to be released for Microsoft Windows, PlayStation 4, PlayStation 5, Stadia, Xbox One, and Xbox Series X/S on 10 December 2020.",
#     price_per_day: 4,
#     condition: "new",
#     user: User.last
#   )

# cyberpunk.photo.attach(io: file, filename: 'cyberpunk.jpg', content_type: 'image/jpg')


file = URI.open('https://c4.wallpaperflare.com/wallpaper/209/251/804/cod-mw-ghost-call-of-duty-hd-wallpaper-preview.jpg')

duty = Game.create!(
    title: "Call of Duty: Black Ops Cold War",
    category: "First-person shooter",
    description: "Call of Duty: Black Ops Cold War is a 2020 first-person shooter video game developed by Treyarch and Raven Software and published by Activision. It is the sixth installment in the Black Ops series, and the seventeenth installment in the overall Call of Duty series.",
    price_per_day: 4,
    condition: "used",
    user: User.last
  )

duty.photo.attach(io: file, filename: 'duty.jpg', content_type: 'image/jpg')




file = URI.open('https://img1.goodfon.com/original/2552x1433/9/56/cs-go-global-offensive-valve-global-offensive-counter-stri-6.jpg')

cs = Game.create!(
    title: "Counter-Strike",
    category: "First-person shooter",
    description: "Counter-Strike is a series of multiplayer first-person shooter video games in which teams of terrorists battle to perpetrate an act of terror while counter-terrorists try to prevent it. The series began on Windows in 1999 with the release of the first game, Counter-Strike.",
    price_per_day: 4,
    condition: "new",
    user: User.last
  )

cs.photo.attach(io: file, filename: 'cs.jpg', content_type: 'image/jpg')




file = URI.open('https://static.giga.de/wp-content/uploads/2014/09/1-1920_1200.jpg')


lol = Game.create!(
    title: "League of Legends",
    category: "Multiplayer online battle arena",
    description: "League of Legends is a 2009 multiplayer online battle arena video game developed and published by Riot Games for Microsoft Windows and macOS. Originally inspired by Defense of the Ancients, the game has followed a freemium model since its release on October 27, 2009.",
    price_per_day: 4,
    condition: "used",
    user: User.last
  )


lol.photo.attach(io: file, filename: 'lol.jpg', content_type: 'image/jpg')





file = URI.open('https://wallpapercave.com/wp/wp1826876.png')

sims = Game.create!(
    title: "The Sims",
    category: "Life simulation game",
    description: "The Sims is a strategic life simulation video game developed by Maxis and published by Electronic Arts in 2000. It is a simulation of the daily activities of one or more virtual people in a suburban household near a fictional city. Players control customizable Sims as they pursue career and relationship goals.",
    price_per_day: 4,
    condition: "new",
    user: User.last
  )

sims.photo.attach(io: file, filename: 'sims.png', content_type: 'image/png')



file = URI.open('http://www.desktopimages.org/pictures/2016/0415/1/orig_466350.jpg')

pong = Game.create!(
    title: "Pong",
    category: "Sports video game",
    description: "Pong is a table tennis-themed arcade video game, featuring simple two-dimensional graphics, manufactured by Atari and originally released in 1972.",
    price_per_day: 8,
    condition: "used",
    user: User.last
  )

pong.photo.attach(io: file, filename: 'pong.jpg', content_type: 'image/jpg')


file = URI.open('https://i.redd.it/96po75b3dcr21.png')

tetris = Game.create!(
    title: "Tetris",
    category: "Tile-matching video game",
    description: "Tetris is a tile-matching video game created by Russian software engineer Alexey Pajitnov in 1984. It has been published by several companies, most prominently during a dispute over the appropriation of the rights in the late 1980s.",
    price_per_day: 6,
    condition: "new",
    user: User.last
  )

tetris.photo.attach(io: file, filename: 'tetris.png', content_type: 'image/png')


  puts "Complete, created #{Game.count} games."
