def do_it_twice(&block)
  block.call
  block.call
end

do_it_twice do
  puts 'murditivent flavitemphan siresent litics'
end

def do_it_twice
  yield
  yield
end

do_it_twice do
  puts 'buritiate mustripe lablic acticise'
end
