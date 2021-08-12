def oxford_comma(array)
  if array.size == 1
    array[0]
  elsif array.size == 2
    array.join(" and ")
  else
    array[-1] = "and #{array[-1]}"
    i = array.size - 1
    until i==0 do
      array[i] = " #{array[i]}"
      i-=1
    end
    array.join(",")
  end
end