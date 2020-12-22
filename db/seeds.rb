require 'faker'
require "open-uri"


puts 'Cleaning database now...'
Rental.destroy_all
Game.destroy_all
User.destroy_all
Review.destroy_all
puts 'Database clean ✅'

# user
User.create!(
  name: "C.Nolan",
  address: "Holzmarktstraße 25, 10243 Berlin",
  email: "nolan@email.com",
  password: "password"
)

# games

file = URI.open('https://i.redd.it/d5g2jaawgw431.jpg')

link = Game.create!(
    title: "Legend of Zelda: Breath of the Wild",
    category: "Action-adventure",
    description: "Breath of the Wild is an action-adventure game set in an open world where players are tasked with exploring the kingdom of Hyrule while controlling Link.",
    price_per_day: 7,
    condition: "used",
    user: User.last
  )
  link.photo.attach(io: file, filename: 'link.jpg', content_type: 'image/jpg')



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

# reviews

  puts "Complete, created #{User.count} users."
  puts "Complete, created #{Game.count} games."
  puts "Complete, created #{Rental.count} rentals."
  puts "Complete, created #{Review.count} reviews."
