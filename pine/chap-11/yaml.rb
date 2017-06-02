#YAML!
require 'yaml' #must get yaml o use it
test_array = ['Give Quiche A Chance', 'Mutants Out!',
              'Chameleoniic Life-Forms, No Thanks']
# Here's half the magic:
test_string = test_array.to_yaml
# Kind of like "to_s", and in fact it is a string
# but it's a yaml description of "test_array".
filename = 'RimmerTShirts.txt'

File.open filename, 'w' do |f|
  f.write test_string
end

read_string = File.read filename

# and the other half of the magic

read_array = YAML::load read_string
puts(read_string == test_string)
puts(read_array == test_array)
