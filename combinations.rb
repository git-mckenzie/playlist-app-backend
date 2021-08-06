require "csv"

data = CSV.read(ARGV[0])
# CSV.open("menu.csv", "w") do |csv|
#   csv << ["Target price", $15.05]
#   csv << ["mixed fruit", $2.15
#   csv << ["french fries", 2.75
#   side salad, 3.35
#   hot wings, 3.55
#   mozzarella sticks, 4.20
#   sampler plate, 5.80

# end

index = 0
data_cleaned = []
while index < data.length
  data_cleaned << data[index][1].delete("$").to_f
  index += 1
end
p data_cleaned

def powerset(array)
  if array.empty?
    [[]]
  else
    first_elem, *rest_elems = array
    subsets = []
    powerset(rest_elems).each do |subset|
      subsets.push(subset)
      subsets.push(subset.clone.push(first_elem))
    end
    subsets
  end
end

def sums_to_zero?(array)
  array.reduce(:+) == 0.5
end

def subsets_that_sum_to_zero(array)
  powerset(array).select { |subset| sums_to_zero?(subset) }
end

original_set = [-9, -7, -2, 2, 7, 9]
subsets_that_sum_to_zero(original_set).each do |subset|
  puts "The subset #{subset} sums to zero!"
end

example = [0.1, 0.2, 0.3, 0.4, 0.5]
prices = [2.15, 2.75, 3.35, 3.55, 4.20, 5.80]

subsets_that_sum_to_zero(example).each do |subset|
  puts "The subset #{subset} sums to 0.5!"
end
