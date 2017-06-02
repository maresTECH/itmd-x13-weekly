require 'yaml'
#define methods
def yaml_save object, filename
  File.open filename, 'w' do |f|
    f.write(object.to_yaml)
  end
end
def yaml_load filename
  yaml_string = filename
  yaml_string = File.read filename

  YAML::load yaml_string
end
# ..and now the methods
test_array = ['Slick Shoes', 'Bully Blinders', 'Pinchers of Peril']
filename = 'DataGadgets.txt'
#save
yaml_save test_array, filename
#load
read_array = yaml_load filename
puts(read_array == test_array)
