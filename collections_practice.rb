# your code goes here
require "pry"

def begins_with_r(array)
  comparer = []
  array.each do |item|
    if item[0] == "r"
      comparer.push(item)
    end
  end
  if comparer == array
    true
  else
    false
  end
end

def contain_a(array)
  number_of_a = []
  containing_a = []
    array.each do |item|
      number_of_a.push(item.count("a"))
    end
    x = 0
    number_of_a.each do |item|
      if item > 0
        containing_a.push(array[x])
      end
      x += 1
    end
  containing_a
end

def first_wa(array)
  array.find do |item|
    item[0] == "w" && item[1] == "a"
  end
end

def remove_non_strings(array)
  array.delete_if do |item|
    item.class == Fixnum || item.class == Float || item.class == Array || item.class == Hash || item.class == TrueClass || item.class == FalseClass || item.class == Symbol
  end
  array
end

def count_elements(array)
array_with_count = array.uniq
  array_with_count.each do |hash|
      element_count = 0
      y = 0
      while y < array.length
        if hash == array[y]
          element_count += 1
        end
        y += 1
      end
    hash[:count] = element_count
  end
array_with_count
end



def merge_data(array1, array2)
merged_array = array1

  array2.each do |item|

    binding.pry

  end

puts merged_array
end

keys = [
      {
          :first_name => "blake",
               :motto => "Have a koala-ty day!"
      },
      {
          :first_name => "ashley",
               :motto => "I dub thee, 'Lady Brett Ashley'."
      }
  ]

data = [
         {
           "blake" => {
              :awesomeness => 10,
                   :height => "74",
                :last_name => "johnson"
          },
          "ashley" => {
              :awesomeness => 9,
                   :height => 60,
                :last_name => "dubs"
          }
      }
  ]

merge_data(keys, data)
