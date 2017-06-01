#This is a rewritten program from ch 6
#We use the logic operators this go around

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
#OR
if name == 'Nick' || name == 'Trudy'
  puts 'What a great name!'
end
puts ''
i_am_nick = true
i_am_purple = false
i_like_wine = true
i_eat_rocks = false
puts i_am_nick && i_like_wine
puts i_like_wine && i_eat_rocks
puts i_am_purple && i_like_wine
puts i_am_purple && i_eat_rocks
puts
puts i_am_nick || i_like_wine
puts i_like_wine || i_eat_rocks
puts i_am_purple || i_like_wine
puts i_am_purple || i_eat_rocks
puts
puts !i_am_purple
puts !i_am_nick
