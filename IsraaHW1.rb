# 3.times { |i| puts i }

# names = ["Ebere","Yassir","Ahmad", "Atheer", "Mike", "Sami" , "Alanoud" ]

# names.length.times{ |i| puts "hello #{i} = #{names[i]}"}

# 1. Return an array of each Student’s full name, upper-cased
puts "===================="
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

upper_case_full_names = []
students.each do |full_name|
    upper_case_full_names.push(" #{full_name[:first_name].upcase} #{full_name[:last_name].upcase} ")
end
p upper_case_full_names
puts "===================="
# 2. Find the first order for each user
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
first_order_for_each_user = []
users.map do |key| key.to_s
    first_order_for_each_user.push(description:key[:orders][0][:description])
end
p first_order_for_each_user
puts "===================="
# 3. Find the average amount spent on coffee, per transaction, for each person
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
people.map do |key|
    avg = 0
    count = 0
    key[:transactions].length.times do |i|
        if key[:transactions][i][:type] == "COFFEE"
            count +=1
        avg += key[:transactions][i][:amount] 
        end
    end
    coffee_average_per_person.push(name:key[:name], coffee_average:avg/count)
end
puts coffee_average_per_person
puts "===================="
#4. Find the most expensive product for each store, with the store name
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
stores.map do |key|
    expensive = []   
    if  key[:products][0][:price]  > key[:products][1][:price]
        expensive.push(description: key[:products][0][:description] , price: key[:products][0][:price])
    else
        expensive.push(description: key[:products][1][:description] , price: key[:products][1][:price])
    end     
    most_expensive_products_by_store.push(store_name:key[:store_name] , most_expensive_product: expensive[0])
end
puts most_expensive_products_by_store
puts "===================="
# Bonus
puts "*********"
puts "Bonus Start!"
students_list = []
loop do
  puts "add a student?"
  input = gets.chomp
  students_list.push(input)
  puts "Do you want to continue ? (y/n)"
  input1 = gets.chomp
  break if input1 == "y"
end
puts "Bouns End!"
puts "*********"
puts "Students List:\n"
puts students_list

