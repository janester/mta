
subways = {}
subways[:n] = ["timessq", "34", "28n", "23n", "unionsq", "8n"]
subways[:six] = ["grandcent", "33", "28s", "23s", "unionsq", "8s"]
subways[:l] = ["8ave", "6ave", "unionsq", "3ave", "1ave"]

print "Which subway would you like to take? The N, 6 or L? "
subwaychoice1 = gets.chomp.downcase
if subwaychoice1 == "6"
  subwaychoice1 = :six
elsif subwaychoice1 == "n"
  subwaychoice1 = :n
elsif subwaychoice1 == "l"
  subwaychoice1 = :l
else
  puts "You didn't enter a vaild choice"
end

print "Which stop would you like to get on at? #{subways[subwaychoice1]} "
on = gets.chomp.downcase
puts "You didn't enter a stop" unless subways[subwaychoice1].include? on

print "Which subway would you like to get off at? The N, 6, or L? "
subwaychoice2 = gets.chomp.downcase
if subwaychoice2 == "6"
  subwaychoice2 = :six
elsif subwaychoice2 == "n"
  subwaychoice2 = :n
elsif subwaychoice2 == "l"
  subwaychoice2 = :l
else
  puts "You didn't enter a vaild choice"
end

print "Which stop would you like to get off? #{subways[subwaychoice2]} "
off = gets.chomp.downcase
puts "You didn't enter a stop" unless subways[subwaychoice2].include? off

if subwaychoice1 == subwaychoice2
  a = subways[subwaychoice2].index(on)
  b = subways[subwaychoice2].index(off)
  c = (b-a).abs
else
  a = subways[subwaychoice1].index(on)
  b = subways[subwaychoice1].index("unionsq")
  g = (b-a).abs
  d = subways[subwaychoice2].index(off)
  e = subways[subwaychoice2].index("unionsq")
  f = (d-e).abs
  c = g + f
end

puts "You are #{c} stops away from #{off}."







