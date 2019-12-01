#1.Return an array of each Student’s full name, upper-cased

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

upper_case_full_names = students.map{|item| item[:first_name].upcase+" "+item[:last_name].upcase }

puts "1. Return an array of each Student’s full name, upper-cased"
print upper_case_full_names
puts "\n"
##################################################################

#2. Find the first order for each user

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

first_order_for_each_user = users.map{|i|  i[:orders][0]}

puts "\n2. Find the first order for each user"
print first_order_for_each_user
puts "\n"
##################################################################

#3. Find the average amount spent on coffee, per transaction, for each person

people = [
  {
      name: "Ashjan",
      transactions: [
          {
              type: "COFFEE",
              amount: 7.43
          },
          {
              type: "TACOS",
              amount: 14.65
          },
          {
              type: "COFFEE",
              amount: 4.43
          }
      ]
  },
  {
      name: "Abeer",
      transactions: [
          {
              type: "BIKES",
              amount: 800.00
          },
          {
              type: "TACOS",
              amount: 14.65
          },
          {
              type: "COFFEE",
              amount: 4.43
          }
      ]
  },
  {
      name: "Nujud",
      transactions: [
          {
              type: "COFFEE",
              amount: 7.43
          },
          {
              type: "COFFEE",
              amount: 100.00
          },
          {
              type: "COFFEE",
              amount: 4.43
          }
      ]
  }
]


coffee_average_per_person = []

puts "\n3. Find the average amount spent on coffee, per transaction, for each person"

people.map{|i|
sum = 0
count = 0
i[:transactions].map{|j|  
if j[:type] == "COFFEE"
    sum = sum + j[:amount]
    count = count +1
end
}
average = sum/count
 coffee_average_per_person.push({name:i[:name],coffee_average:average})
}

puts coffee_average_per_person

puts "\n"
##################################################################

#4. Find the most expensive product for each store, with the store name:

stores = [
  {
      store_name: "Virgin",
      products: [
          {
              description: "PS4",
              price: 9384.33
          },
          {
              description: "Pen",
              price: 345.54
          }
      ]
  },
  {
      store_name: "Manuel",
      products: [
          {
              description: "Bread",
              price: 654.44
          },
          {
              description: "Cheese",
              price: 323.43
          }
      ]
  },
  {
      store_name: "Noon",
      products: [
          {
              description: "iPhone",
              price: 345.43
          },
          {
              description: "TV",
              price: 899.33
          }
      ]
  }
]
most_expensive_products_by_store = []

puts "\n4. Find the most expensive product for each store, with the store name:"

stores.each{|i| 
most_expensive_products = i[:products].max_by{|j| j[:price]}
most_expensive_products_by_store.push({store_name: i[:store_name],most_expensive_product:most_expensive_products})
}

puts  most_expensive_products_by_store

puts "\n"
##################################################################
=begin
Write an infinite loop that will make you add all the your friends in the students list and after each 
add will ask if you want to quit the loop (yes/no) if the user choose no print all the students array
=end

puts "\nBonus"

students_array = []
input = ""
while input != "n" do
    puts "add a student"
    students_array.push(gets.chomp)
  puts "Do you want to continue ? (y/n)"
    input = gets.chomp
end
puts students_array

puts "\n"
##################################################################