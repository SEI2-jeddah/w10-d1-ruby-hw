=begin
FIRST QUESTION
students = [
  {
      first_name: "Wejdan",
      last_name: "Alghamdi"
  },
  {
      first_name: "Shahad",
      last_name: "Bagarish",
  },
  {
      first_name: "Doaa",
      last_name: "Alalawi",
  }
]
students = students.collect {|i| "#{i[:first_name]} #{i[:last_name]} "}

to_uppercase =[]
students.each do |i|
  i = i.upcase
  to_uppercase.push(i)
end

puts to_uppercase
=end

=begin
Second quesion

users = [
  {
      name: "Mohammad",
      orders: [
          {
              description: "a bmx"
          }
      ]
  },
  {
      name: "Ibtissam",
      orders: [
          {
              description: "honey"
          },
          {
              description: "Nintendo 3DS"
          }
      ]
  },
  {
      name: "Yazeed",
      orders: [
          {
              description: "a Razer Blade"
          },
          {
              description: "The Arrow DVDs"
          },
          {
              description: "airpods"
          },
          {
              description: "a unicorn"
          }
      ]
  }
]

users = users.collect { |i| "#{i[:orders][0]}"}
orders = []
users.each do |i|
  orders.push(i)
end
puts orders
=end


## I can't think of a way to solve the third question
# So , I won't do it



# Bonus


input = ""
list = []
puts "add frind"
while input != "n" do
  puts "add more frinds or type N to quit"
  input = gets.chomp
  list.push(input)
end

list.pop()

print list






#
