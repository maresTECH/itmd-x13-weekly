# program collects words into an array and sorts them alphabetically
puts 'What are the words you want to sort?'
words = []

while true
  word = gets.chomp
  if word == ''
    break
  end
#words are pushed into array
  words.push word
end
#words are sorted
puts 'Well, I did what you aske me to do...'
puts
puts words.sort
puts
