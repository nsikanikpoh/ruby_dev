def array_converter *arrays
  arrays.flatten.map(&:to_i)
end


arr_1 = ['1', '5', '9']
    arr_2 = ['10', '2', '7', '10']
    arr_3 = ['3', '4', '0']


p array_converter(arr_1, arr_2, arr_3)
print self