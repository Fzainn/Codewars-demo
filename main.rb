def check_for_factor(base, factor)
  if base %factor == 0
    true
  else
    false
  end
end

check_for_factor(10, 2)

########################

def remove_smallest(numbers)
  if numbers.empty?
    numbers
  else
    new=numbers.dup
    new.delete_at(new.index(new.min))
    new
  end
end

remove_smallest([1, 2, 3, 4, 5])

#########################

def longest_consec(strarr, k)
  #return emty array if the k lower than 1 or greater than the array size
  return "" if k < 1 || k > strarr.size
  #loop for each substring(according to the k number)for map through it and merge it by the max string
  strarr.each_cons(k).map(&:join).max_by(&:length)

end

longest_consec(["zone", "abigail", "theta", "form", "libe", "zas"], 2)

###########################

class String
  def to_alternating_case
    #swapcase function in ruby is to convert uppercase letter lowercase and vice verse 
    #without changing in the original string
    self.swapcase
  end
end

###########################

def min(list)
  return list.min

end
min([-52, 56, 30, 29, -54, 0, -110])

def max(list)
  return list.max
end
max([4,6,2,1,9,63,-134,566])

###############################

def get_grade(s1, s2, s3)
  av = (s1+s2+s3) / 3
  case av
    when (90..100)
    'A'
    when (80..89)
    'B'
    when (70..79)
    'C'
    when (60..69)
    'D'
    when (0..59)
    'F'
    else
    'grade not found!'
   end 
end

get_grade(95, 90, 93)

###########################

def row_sum_odd_numbers(n)
  n**3
end

row_sum_odd_numbers(2)

########################

def is_palindrome str
  #str.casecmp?(str.reverse)
    str.downcase == str.downcase.reverse  
end

is_palindrome("hello")

########################

def enough(cap, on, wait)
  num = cap - on
  if num >= wait
    0
  else
    wait - num
  end  

end    

enough(10, 5, 5)

########################

def hero(b, d)
  if d*2 <= b
    true
  else
    false
  end  
end

hero(10, 5)

############################

def pangram?(str)
  ('a'..'z').all? { |letter| str.downcase.include?(letter) }
end

pangram?("The quick brown fox jumps over the lazy dog.")

#########################

def printer_error(s)
  error = s.count('n-z')
  "#{error}/#{s.length}"
end

printer_error("aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz")

####################

def switch_it_up(number)
  case number
    when 0
      "Zero"
    when 1
      "One"
    when 2
      "Two"
    when 3
      "Three"
    when 4
      "Four"
    when 5
      "Five"
    when 6
      "Six"
    when 7
      "Seven"
    when 8
      "Eight"
    when 9
      "Nine"
    else
      "invalid"
    end
end

#%w(Zero One Two Three Four Five Six Seven Eight Nine)[number]


switch_it_up(1)

##########################

def count_chars(str)
  #creating new hash to store the counted charachter
  char_counts = Hash.new(0)
#loop to iterate each charachter
  str.each_char do |char|
    #this line to increament the count of current char 
    char_counts[char] += 1
  end
#to convert the key of the char_counts from symbol to string
  char_counts.transform_keys(&:to_s)
end


count_chars("aba")

#####################

def delete_nth(order,max_e)
 #empty list to store the new numbers
  result = []
  #new hash to store the counts
  counts = Hash.new(0)
  #loop through each number in the list
  order.each do |num|
  # if the numbers count less than max_e
  #put the number in the empty array 
  #and add 1 to the hash count  
    if counts[num] < max_e
      result << num
      counts[num] +=1
    end
  end
  result
end  



delete_nth([20,37,20,21], 1)

#############################

def greet(lang)
  case lang
    when "english" then "Welcome"
    when "czech" then "Vitejte"
    when "danish" then "Velkomst"
    when "dutch" then "Welkom"
    when "estonian" then "Tere tulemast"
    when "finnish" then "Tervetuloa"
    when "flemish" then "Welgekomen"
    when "french" then "Bienvenue"
    when "german" then "Willkommen"
    when "irish" then "Failte"
    when "italian" then "Benvenuto"
    when "latvian" then "Gaidits"
    when "lithuanian" then "Laukiamas"
    when "polish" then "Witamy"
    when "spanish" then "Bienvenido"
    when "swedish" then "Valkommen"
    when "welsh" then "Croeso"
    else "Welcome"
    end
end

puts greet('english')


#we can make a hash to store make this languages as a database[key:value]
#def greet(lang)
#and convert the input language into a symboly(key in hash) to retrieve the value if the key
#or if the input lang is not found it hash database, defualt the result to "Welcome" in english
  #LANG[lang.to_sym] || LANG[:english]
#end  


######################################


ef str_count(word, letter)

  count = 0
  word.each_char do |chars|
    count += 1 if chars == letter
   end
  count
end

str_count('Hello', 'o')

#################################

def str_count(word, letter)
   #word.count(letter)
  count = 0
  word.each_char do |chars|
    count += 1 if chars == letter
   end
  count
end

str_count('Hello', 'o')


#########################

def solution(string)
  string.scan(/[A-Za-z][a-z]*/).join(' ')
end

solution('camelCasing')

######################

class String
  def is_upcase?
    self.upcase == self
  end
end

puts "hello I AM DONALD".is_upcase?

#######################3

def sum_str(a, b)
  sum=a.to_i + b.to_i
  final = sum.to_s
end

sum_str("4","5")

#####################

def square(n)
  n**2
end

square(3)

###################

def between(a, b)
  if a < b
    #convert it to array to return an arrayb of numbers
    (a..b).to_a
  else  
    "invalid"
  end
end

between(1, 4)

######################

def sort_array(arr)
  #select the odd numbers and sort it in the asceding order in a new array
  odds = arr.select(&:odd?).sort
  #map through the array and check if the n is odd number then replace it with the 
  #first number in the odds array, if the n is even number is still in its original place
  arr.map { |n| n.even? ? n : odds.shift }
end
sort_array([5, 3, 2, 8, 1, 4, 11])


############################

def queue_time(customers, n)
  return 0 if customers.empty?

  tills = Array.new(n, 0)

  customers.each do |customer|
    min_till_index = tills.index(tills.min)
    tills[min_till_index] += customer
  end

  tills.max
end
queue_time([], 1)


######################

def abbrev_name(name)
  initials = name.split.map { |word| word[0] }.join"."
  return initials.upcase
end

full_name = "Farha Zain"
result = abbrev_name(full_name)
puts result

#######################

def divisors(n)
  count = 0
  (1..n).each do |i|
    count += 1 if (n % i).zero?
  end
  count
end

divisors(10)

#######################

def goals (laLigaGoals, copaDelReyGoals, championsLeagueGoals)
  (laLigaGoals + copaDelReyGoals+ championsLeagueGoals)
end

goals(43, 10, 5)

#####################3

def wave(str)
#create an empty array to store the result
  wave = []
#loop through the string
   for i in 0...str.length
#convert str into downcase
     word = str.downcase
#convert the current letter(i) into upcase
     word[i] = word[i].upcase
#add the finished word into the array if the current word is alphabetic
     wave << word if word[i].match(/[A-Za-z]/)
   end
  wave
end


wave("hello")

############################

def reverse_list list
  list.reverse
end

reverse_list([1,2,3,4])

###########################

def friend(friends)
  f = []
  friends.each do |name|
    if name.length == 4
      f << name
    end
  end
  f
end


friend(["Ryan", "Kieran", "Mark"])

#############################

def repeat_str (n, s)
  s*n

end

repeat_str(3, "*")

#########################

def litres(time)
 (time * 0.5).to_i
end

litres(2)

##########################

def countSheeps array
  count = 0
   array.each do |value|
     if value == true 
       count  += 1
     end
   end
  count

end

array1 = [true,  true,  true,  false,
          true,  true,  true,  true ,
          true,  false, true,  false,
          true,  false, false, true ,
          true,  true,  true,  true ,
          false, false, true,  true ]
countSheeps(array1)


#########################

def get_age(age)
 age.to_i
end
get_age("2 years old")

#########################

def problem x
  if x.is_a?(Numeric)
    (x * 50) + 6
  else
    "Error"
  end  
end

problem("hello")


########################

def set_alarm(employed, vacation)
  #is a boolean expression in Ruby that represents a condition
  employed && !vacation

end
set_alarm(true, true)

#######################

def zero_fuel(distance, mpg, fuel_left)
  if mpg*fuel_left >= distance
    true
  else
    false
  end  
end

zero_fuel(50, 25, 2)

######################

def sale_hotdogs(n)
  if n < 5 
    n * 100
  elsif n >= 5 && n < 10
    n*95
  else 
    n * 90
  end

end

sale_hotdogs(1)

####################

def towerBuilder(n)
  (1..n).map do |i|
    space = ' ' * (n - i)
    stars = '*' * (i * 2 - 1)
    space + stars + space
  end
end

towerBuilder(1)

######################

def two_sort(s)
  #chars function to convert a string into a charachter
s.min.chars.join('***')
end

two_sort(["bitcoin", "take", "over", "the", "world", "maybe", "who", "knows", "perhaps"])

#######################

def sequence_sum(begin_number, end_number, step)
  #(..) range value

  (begin_number..end_number).step(step).sum
end

sequence_sum(2, 6, 2)

#####################

def expression_matter(a,b,c)
  [a * b * c, (a + b) * c, a * (b + c), a + b + c].max
end

expression_matter(2, 1, 2)

####################

def shortcut(s)
  s.gsub(/[aeiou]/, '')
end

shortcut('hello')

################

def test_even(n)
  n % 2 == 0? true : false 
end

test_even(0)

#################

def make_negative(num)
  if num < 0
    num
  else
    -num
  end  

end

make_negative(42)

##############

def sort_by_length(arr)
  arr.sort_by {|arr| arr.length}
end


sort_by_length(["Telescopes", "Glasses", "Eyes", "Monocles"])


##################

def find_it(seq)
  seq.uniq.each do |num|
    return num if seq.count(num).odd?
  end
end
find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])

##################

def move (position, roll)
  position + roll * 2
end

move(0,4)

################

def nb_dig(n, d)
  # Generate an array of squares from 0 to n, convert each square to a string
  sq = (0..n).map{|k| (k**2).to_s}

  # Count occurrences of the digit d in the concatenated string of squares
  count = sq.join.count(d.to_s)
  count
end

nb_dig(5, 0)

################

def remove_every_other(arr)
  #each_with_index used to iterate through the array with the element and the index
  #select each even element and replace it ith nill then remove the nill value with compact
  arr.each_with_index.map{|element,index| element if index.even?}.compact
end

remove_every_other(['Hello', 'Goodbye', 'Hello Again'])

##################

class String
  def toJadenCase
    split(" ").map{|word| word.capitalize}.join(" ")
  end
end
str = "How can mirrors be real if our eyes aren't real"
puts str.toJadenCase()


#####################

def is_valid_walk(walk)

  walk.count('n') == walk.count('s') && walk.count('e') == walk.count('w') && walk.length == 10


end

is_valid_walk(['n','s','n','s','n','s','n','s','n','s'])

####################

def make_upper_case(str)
  str.upcase
end

make_upper_case("hello")


#############

def high(x)
  #split x by the max word
  x.split.max_by { |w| score_word(w) }
end

def score_word(word)
  #word.chars converts the string word into charachters,inject method to iterate each charachter
  #and accumulate the sum, the initial value of the sum is 0,for each charachter the expression (ch.ord - 96) is evaluated 
  #and it’s value is added to the current sum, this |sum, ch| is a block parameter list defining two vars the currrent sum and currenet cahrachter
  word.chars.inject(0) { |sum, ch| sum + (ch.ord - 96) }
end

high('man i need a taxi up to ubud')


####################

def position(alph)
  "Position of alphabet: #{alph.ord - 96}"
end

position("a")


###################

def arithmetic(a, b, operator)
  case operator
    when operator = "add"
      a+b
    when operator = "subtract"
      a-b
    when operator = "multiply"
      a*b
    when operator = "divide"
      a/b
    else
    "invalid"
    end
end
arithmetic(1, 2, "add")


###################

def reverse_letter(str)
  str.gsub(/[^a-zA-Z]/, '').reverse

end

reverse_letter("krishan")


##################

def descending_order(n)
  #to_s to convert integer to string
  #split the string of an array of charachter
  #sort the characters in ascending order
  n.to_s.chars.sort.reverse.join.to_i
end

descending_order(123456789)

def rental_car_cost(d)
  case
  when d == 1
    40
  when d >= 7
    (d * 40) - 50
  when d >= 3
    (d * 40) - 20
  else
    d * 40
  end
end

puts rental_car_cost(1)

########################

def better_than_average(arr, points)
  # to append points to the array 
  arr << points
  total_sum = arr.reduce(:+)
  avr = total_sum.to_f/arr.length
  if avr > points
    false
  else
    true
  end  
end

better_than_average([100, 40, 34, 57, 29, 72, 57, 88], 75)

############################################################

def dna_to_rna(dna)

  #gsub function to replace all the occurance of T with U 
  dna.gsub("T","U")
end

dna_to_rna("TTTT")

#############################################################

def twice_as_old(dad, son)
  num = dad - (son * 2)
  final = num.abs

end

puts twice_as_old(36,7)

########################################################

def grow(x) 
  #to multiply numbers in order
  x.map.reduce(:*)
end

puts grow([1, 2, 3])

#######################################################

def get_middle(s)
  #calculating the middle by subtracting 1 from the length as the index is 0 based
  #and dividing it by 2
  middle = (s.length - 1) / 2 

   #using ternary operator, if the length is odd, return the middle, if it even
  #return the middle and add 1 to it(it means the 2 middle chars)
  s.length.odd? ? s[middle] : s[middle..middle+1]
end


get_middle("testing")

#######################################################

def longest(a1, a2)
  # combine a1 and a2 and extract the unique charachter
  str = (a1+a2).chars.uniq
  #sort the letters and join them in single string
  final_str = str.sort.join
end


puts longest("aretheyhere", "yestheyarehere")

########################################################

def maps(x)
  x.map {|element| element * 2}
end

puts maps([1, 2, 3])

######################################################

def sum_mix(x)
   x.sum(&:to_i)
end  

sum_mix([9, 3, '7', '3'])

####################################################

def positive_sum(arr)
  # sum the positive numbers if num is greater than 0, else add 0
  arr.sum {|num| num > 0? num :0}

end

positive_sum([1,2,3,4,5])

#################################################

def string_to_array(str)
  str.split(" ")

end

string_to_array("Robin Singh")

##############################################

def find_short(s)
  s.split.map{|word| word.length}.min
end

find_short("lets talk about javascript the best language")

##################################################

def greet(name,owner) 
  if name == owner
    "Hello boss"
  else
    "Hello guest"
  end  
end

puts greet("Daniel","Daniel")
################################################

def order(words)
  words.split(' ').sort_by { |word| word[/\d+/].to_i }.join(' ')
end

order("is2 Thi1s T4est 3a")
#################################################

def disemvowel(str)
  str.gsub(/[aeiouAEIOU]/,'')
end

puts disemvowel("This website is for losers LOL!")

################################################

def even_or_odd(n)
   if n.even?
     "Even"
   else
     "Odd"
  end  
end

even_or_odd(5)
###############################################

def fake_bin(s)
  #map through each digit of the char 
  s.chars.map  do |digit|
    # if the digit is below 5 will replace it with 0, else replace it with 1
    digit.to_i < 5? '0' : '1' 
  end.join  # join the array into single string
end

puts fake_bin('45385593107843568')
################################################

def is_triangle(a,b,c)
   if a+b > c && a+c > b && b+c>a
     true
   else
     false
   end  
end

puts is_triangle(1,2,2)
################################################

def add_binary(a,b)
  (a+b).to_s(2)
end
puts add_binary(1,1)

###################################################

def duplicate_count(text)
  count = 0
  seen_characters = []
  repeated_characters = []

  text.chars.each do |char|
    char_downcase = char.downcase
    if seen_characters.include?(char_downcase)
      unless repeated_characters.include?(char_downcase)
        count += 1
        repeated_characters << char_downcase
      end
    else
      seen_characters << char_downcase
    end
  end

  return count
end

puts duplicate_count("abcde")  # Output: 0 (no characters repeated)
puts duplicate_count("aabbcde")  # Output: 2 (a and b are repeated)

################################################

def square_digits num
  num.to_s.chars.map { |digit| (digit.to_i ** 2).to_s }.join.to_i

end

puts square_digits(3212)

############################################

def likes(names)
  case names.length
  when 0
    "no one likes this"
  when 1
    "#{names[0]} likes this"
  when 2
    "#{names[0]} and #{names[1]} like this"
  when 3
    "#{names[0]}, #{names[1]} and #{names[2]} like this"
  else
    "#{names[0]}, #{names[1]} and #{names.length - 2} others like this"
  end
end

# Example usage:
puts likes([])

############################################

def array_diff(a, b)
  a.reject { |element| b.include?(element) }
end



puts array_diff([1, 2, 2, 3, 4, 5], [2, 4])

############################################

def quarter_of(month)
  case month
    when (1..3)
    return 1
    when (4..6)
    return 2
    when (7..9)
    return 3
    when (9..12)
    return 4
    else
    "invalid month"
    end
end
puts quarter_of(1)

######################################

def quarter_of(month)
  case month
    when month = 1..3
    return 1
    when month = 4..6
    return 2
    when month = 7..9
    return 3
    when month = 9..12
    return 4
    end
end
puts quarter_of(1)
#####################################

def other_angle(a, b)
  f = 180 - (a+b)
end

puts other_angle(30,60)
#################################

def min_max(lst)
  #lst.minmax
  [lst.min,lst.max]
end

puts min_max([1,5,55,1000,0])
#################################

require 'set'
def is_isogram(str)
  str=str.downcase 
  # creating a new empty set
  uniq_letter = Set.new
  #iterate through each latter in the string to check if the letter is repeated
  #if it is not in the set(which is empty btw)the char will be added to empty set
  #if it in the set, the loop will return false
  str.each_char do |char|
    return false if uniq_letter.include?(char)
    uniq_letter.add(char)
  end
  return true
end

puts is_isogram("zain")
##########################################

def are_you_playing_banjo(name)
  if name.start_with?("R","r")
   return "#{name} plays banjo"
  else
    return "#{name} does not play banjo"

  end  
end

puts are_you_playing_banjo("raro")
#########################################
def area_or_perimeter(l , w)
  if l == w # if lenght and width are equal then its square
    l * w
  else
    2 * (l+w)
  end  
end

puts area_or_perimeter(4 , 5)

##########################################

def lovefunc( f1, f2 )
  if (f1.even? && f2.odd? )|| (f2.even? && f1.odd?)
    true
  else 
    false
  end  
end

puts lovefunc( 2, 5 )
########################################
def high_and_low(n)

  # split numbers into individuals and map through for converting it integers
  numbers = n.split.map(&:to_i)

  "#{numbers.max} #{numbers.min}"


end


puts high_and_low("8 3 -5 42 -1 0 0 -9 4 7 4 -4")
#############################################

def number_to_string(num)
  num.to_s
end

puts number_to_string(1)
##########################################

def validate_pin(pin)
  return false if pin.match(/\D/)
  return true if [4, 6].include?(pin.length)
  false



end

puts validate_pin("123")  # Outputs true
##############################################

def solution(str, ending)
  if str.end_with? ending
    true
  else
    false
  end  
end

puts solution("tree", "ee")

#########################################

def odd_or_even(array)
  arr = array.sum
  if arr.even?
    "even"
  else
    "odd"
  end  
end

puts odd_or_even([1,4,5,6])

######################################
def basic_op(operator, value1, value2)
  case operator
    when operator = "+"
     return value1 + value2
    when operator = "-"
      return value1 - value2
    when operator = "*"
      return value1 * value2
    when operator = "/"
      return value1 / value2
    else "invalid"
    end

end

puts  basic_op("+", 5, 6)

####################################
def XO(str)
  # convert str into small letters and convert it into chars
  str = str.downcase.chars
  co_x = str.count ('x') # count x
  co_o =str.count ('o') # count o
  return co_x == co_o 
end


puts XO("ooxx")

####################################

def reverse_words(str)
  # split string in an array and revrse str 
    str.split(/[' ', ' ']/).reverse.join(' ').reverse
end


puts reverse_words("farha zain")

#################################

def square_sum(numbers)
  sum = 0
  for i in numbers 
    # sum = sum + i ** 2
    sum += i ** 2
  end
  return sum
end

puts square_sum([1,5,6])

#####################################

def opposite(n)
 return -n
end

puts opposite(6)

################################

def summation(num)
  sum = 0 # local variable for storing the result
  for i in 1..num # for loop to iterate through the range from 1 to num with a local variable i
   #sum = sum + i
    sum += i # i will added to the sum variable
  end
  return sum
end

result = summation(6)
puts result

####################################

def smash(words)
  return words.join " "
end

result = smash(['hello', 'world', 'this', 'is', 'great']) 
puts result
###################################

def simple_multiplication(n)
  if n.even? 
    n*8
  else 
    n*9
  end  
end

n = 4
result = simple_multiplication(n)
puts result

################################

def sum_two_smallest_numbers(numbers)
  return numbers.min(2).sum
end

numbers = [1,2,3,4,5]
result = sum_two_smallest_numbers(numbers)
puts result

#################################

def DNA_strand(dna)
  i = 0
  result = ""
  while i < dna.length
  case dna[i]
    when "A"
      result += "T"
    when "C"
      result +="G"
    when "T"
      result += "A"
    when "G" 
      result += "C"
    else
      result += dna[i]  # If it's not A, T, C, or G, keep the original character
    end
    i += 1
  end 
    return result
end


 puts DNA_strand(dna)

################################

def get_count(str)
  #scan method used to scan a string with a specific pattern
  vowel_count = str.scan(/[aeiouAEIOU]/).size
  return vowel_count
end

text = "Hello, Ruby!"
result = get_count(text)
puts result # This will output 3
################################

def get_count(str)
  #scan method used to scan a string with a specific pattern
  vowel_count = str.scan(/[aeiouAEIOU]/).size
  return vowel_count
end

text = "Hello, Ruby!"
result = get_count(text)
puts result # This will output 3

#############################

def double_integer(i)
  return i + i
end

result = double_integer(5)
puts result

#########################

def filter_list(l)
  return l.select { |element| element.is_a?(Integer)}
end


nofilter = [1,2,"a","d"]
result = filter_list(nofilter)
puts result

########################

def bool_to_word bool
  case bool
  when true
    return "Yes"
  when false
    return "No"
  else
    return "Invalid"
  end  
end
result = bool_to_word(true)
puts result

#########################################

def sum_array(arr)
  if arr.nil? || arr.length < 3
    return 0
  else
    result = arr.sum
    result = result - arr.min - arr.max
    return result
  end

end
puts sum_array([6, 2, 1, 8, 10])

#################################

def remove_char(s)
  return s[1..-2] # string slicing, that extract the substring from the first index to whatever you want
end

s = "farha"
result = remove_char(s)
puts result

##############################

def sum(numbers)
  # reduce function to iterate through the array and sum the numbers and return 0 if the array is empty
 return numbers.reduce(0,:+)
end

numbers = []
result = sum(numbers)
puts result

############################

def greet
  "hello world!"
end  

puts greet

########################
def update_light(current)
 case current
 when "green"
    return "yellow"
 when "yellow"
    return "red"

 when "red"
    return "green"
  else
    return "invalid state" # Handle an invalid state if needed
  end
end


current = "red"
result = update_light(current)
puts result

#############################

def find_smallest_int(arr)
  return arr.min
end

arr = [1,2,3,4]
result = find_smallest_int(arr)
puts result

############################

def reverse_seq(n)
  result = [] # here is an empty array to store value
  while n >= 1 # while loop continues as long as the n >= 1
    result << n # append the result of n in the empty array
    n -= 1 # every iterate the loop will decrement n by 1
  end
  return result # retrun the result

end

n = 5
result = reverse_seq(n)
puts result 

##########################

def find_needle(array)
  if array.include?("needle")
    "found the needle at position #{array.find_index('needle')}"
  else
    puts "not found"
  end
end
array = [1,2,"farha","banana", "needle"]

result = find_needle(array)
puts result

###########################

def digitize(n)
  #we first convert the n to string and reverse it then map to convert it into intergs
  return n.to_s.reverse.split("").map(&:to_i)
end

org_n = 123456789
conv_n = digitize(org_n)
puts conv_n

#######################

def no_space(x)
  return x.gsub(" ","")
end


original_x = "farha zain allam"
converted_x = no_space(original_x)
puts converted_x

#########################

def check(arr,element)
  return arr.include?(element)
end

array = [1,2,"farha",7]
element = "farha"
result = check(array,element)
puts result

########################

def greet(name)
  return "Hello, #{name} how are you doing today?"
end

name = "Farha"

####################

def string_to_number(s)
  return s.to_i
end

my_str = "12345678910"
converted_str = string_to_number(my_str)
puts converted_str

####################

def solution(str)
  return str.reverse #reverse is a built-in function 
end

original_str = "Hello!" # the input as an argument in local variable
reversed_str = solution(original_str) # store the output in local variable
puts reversed_str

##################




