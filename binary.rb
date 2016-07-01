require 'ruby-prof'

def chop(item, array)
    slc = (array.length / 2).to_i
    while array.length > 1

        if array.length == 2
          if array[0] == item
            array = item
          elsif array[1] == item
            array = item
          end
        end
        if item < array[0..slc].last
            p "slc = " + slc.to_s
            p "item = " + item.to_s
            p "array = " + array.to_s

            array = array[0..slc]
        else
            p "slc else = " + slc.to_s
            p "item else = " + item.to_s
            p "array = " + array.to_s

            array = array[slc..-1]

        end
        p chop(item, array) if array.length > 1

    end

    if item == array[0]
        item
    else
        "I don't have " + item.to_s
    end
end
array = (1..111).to_a
item = 3
p chop(item, array)
