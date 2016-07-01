def fizzbuzz(how_many)
  number = how_many.to_i
  total = range(0..number)

  if how_many % 15 == 0
    print "Fizzbuzz"
  elsif how_many % 5 == 0
    print "Buzz"
  elsif how_many % 3 == 0
    print "Fizz"
  else
    print how_many
  end
  print(total)
end

print(fizzbuzz(100))
