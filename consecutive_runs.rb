# Methods to check for increasing/decreasing runs of 3 from an array index position
def positive_run(array, index)
  return false unless array[index + 1] == array[index] + 1
  return false unless array[index + 2] == array[index + 1] + 1
  true
end

def negative_run(array, index)
  return false unless array[index + 1] == array[index] - 1
  return false unless array[index + 2] == array[index + 1] - 1
  true
end

# Return array whether input has spaces or no spaces. Example input: [1, 2, 3] or [1,2,3]
def process_input(input)
  input.join(' ').gsub(/["\[\]\s]/, '').split(',').map(&:to_i)
end

# Find indices that begin runs
array = process_input(ARGV)
indices_with_runs = []

array.each_with_index do |_value, index|
  indices_with_runs.push(index) if positive_run(array, index) || negative_run(array, index)
end

# Output results
if indices_with_runs.length.zero?
  puts 'No Runs Found'
else
  puts 'Results: ' + indices_with_runs.inspect
end
