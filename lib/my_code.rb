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

def reduce(source_array, starting_point = nil)
  if starting_point
    reduction = starting_point
    i = 0
  else
    reduction = source_array[0]
    i = 1
  end
  while i < source_array.length do
    reduction = yield(source_array[i], reduction)
    i += 1
  end
  return false if reduction == nil
reduction
end
#tweaked the code to pass test so that I can look at the solution to figure out corect way to do reduction
