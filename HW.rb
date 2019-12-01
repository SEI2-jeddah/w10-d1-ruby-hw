# Question 1
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

  for name in students do
    upper_case_full_names.push("#{name[:first_name].upcase} #{name[:last_name].upcase}")
  end
  puts "Question 1"
  p upper_case_full_names

  # Question 2
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

  for order in users do
  first_order_for_each_user.push(order[:orders][0]) 
end
 puts "Question 2"
 p first_order_for_each_user

# Question 3
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
  for person in people do
    sum = 0
    num = 0
      for amount in person[:transactions] do
          if amount[:type] == "COFFEE"
            sum += amount[:amount] 
                num += 1
          end
      end
     avarge = sum / num 
    coffee_average_per_person.push({name: person[:name], coffee_average: avarge})
end
puts "Question 3"
p coffee_average_per_person

  # Question 4
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

  for store in stores do
    price = 0
    most = {}
    for product in store[:products] do
        if product[:price] > price
            price = product[:price]
            most = product
        end
    end
    most_expensive_products_by_store.push(store_name:store[:store_name],  most_expensive_product: most)
  end
  puts "Question 4"
  p most_expensive_products_by_store

  # Bonus
  puts "Bonus"
  test = true
  friend = " "
friends = []
while friend != "n" do
    p "add a student" 
    friend = gets.chomp
    friends.push(friend)
    p "Do you want to continue ? (y/n)" 
    friend = gets.chomp
end
    puts friends
