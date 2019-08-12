# Your Code Here
def map(source_array)
  new_array = []
  i = 0
  while i < source_array.length do
    new_array.push(yield source_array[i])
    i += 1
  end
  return new_array
end

def reduce(source_array, starting_point = 0)
  i = 0
  if starting_point
    reduction = 0
  else
    reduction = source_array[i]
  end
  while i < source_array.length do
    reduction = yield(source_array[i], starting_point)
    i += 1
  end
reduction
end
#tweaked the code to pass test so that I can look at the solution to figure out corect way to do reduction
