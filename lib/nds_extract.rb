$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  result = {}
  x = 0 
  while x < director_data.length do
    direct = director_data[x][:name]
    result[direct] = 0
    y = 0
    while y < director_data[x][:movies].length do
      result[direct] += director_data[x][:movies][y][:worldwide_gross]
      y+= 1
    end
    x += 1
  end
  return result
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  x = 0 
  while x < nds.length do
    director = nds[x][:name]
    result[director] = 0
    y = 0
    while y < nds[x][:movies].length do
      result[director] += nds[x][:movies][y][:worldwide_gross]
      y+= 1
    end
    x += 1
  end
  return result
end
