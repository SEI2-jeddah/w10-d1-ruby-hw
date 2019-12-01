#1
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

for student in students do
    upper_case_full_names.push("#{student[:first_name].upcase} #{student[:last_name].upcase}")
end
puts "First Exercise:"
p upper_case_full_names

#2
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

  #2 //not perfect but i tried T_T
  puts "Second Exercise"
  first_order_for_each_user = []
  for user in users do
    first_order_for_each_user.push(user[:orders][0])

  end

p first_order_for_each_user 
    

#3
puts "Third Exercise"

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

  people.map do |person|
    counter = 0
    sum = 0
    avg =0
    person[:transactions].each do |transaction|
      if transaction[:type] == 'COFFEE'
        counter += 1
        sum += transaction[:amount]
      end
    end
  avg=sum/counter
  coffee_average_per_person.push({name:person[:name],coffee_average:avg})
  end  
  p coffee_average_per_person

  #4
  puts "4th Exercise"

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

  stores.map do |store|
    max =0
    most_expensive=''
    store[:products].map do |item|

    if item[:price] > max
        max = item[:price]
        most_expensive = item[:description]
    end
end

most_expensive_products_by_store.push({store_name:store[:store_name],most_expensive_item:most_expensive},price:max)
end
puts most_expensive_products_by_store

##Bonus
puts "Bonus Question"

friends =[]
flag = false

while flag == false do
    puts "Add A Friend"
    friend = gets.chomp
    friends.push(friend)
    puts "Do you want to continue ? (y/n)"
    answer = gets.chomp
    if answer == "n"
        flag = true
        p friends
    end
end
