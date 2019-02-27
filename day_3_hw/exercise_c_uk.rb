united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# 1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.
united_kingdom[1][:name] = "Cardiff"
p united_kingdom[1][:name]

# 2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast, and the population is 1,811,000).

united_kingdom[3] = {
  name: "Ireland",
  population: 1811000,
  capital: "Belfast"
}
p united_kingdom[3]

# 3. Use a loop to print the names of all the countries in the UK.
united_kingdom.each do |i| p i[:name] end

# Long version of finding country names loop!
def print_country_names(arr)
  for i in arr
    p i[:name]
  end
end

print_country_names(united_kingdom)

# 4. Use a loop to find the total population of the UK.
united_kingdom.inject(0) {|sum, i| p sum + i[:population] }

 # Long version of total population.
def uk_population_total(arr)
  total = 0
  for i in arr
    total += i[:population]
  end
  p total
end

uk_population_total(united_kingdom)

####
