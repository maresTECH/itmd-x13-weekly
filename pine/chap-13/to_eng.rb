class Integer
  def to_eng
    if self == 5
      english = 'five'
    else
      english = 'fourty-two'
    end


    english
  end
end
#Tsst some numbers here..
puts 5.to_eng
puts 42.to_eng
