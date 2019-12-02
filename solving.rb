# 1:

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

for index in students 
    upper_case_full_names.push("#{index[:first_name].upcase} "+"#{index[:last_name].upcase}") end

print upper_case_full_names

############################

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

  for index in users 
    first_order_for_each_user.push(index[:orders][0]) end

print first_order_for_each_user


###################################################

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
  

for each in people
    total_amount = 0
    for item in each[:transactions]
        total_amount+=item[:amount]
        length = item.length
    end
    average = total_amount / length
    name = each[:name]
    coffee_average_per_person.push({name: name, coffee_average: average})
end

p coffee_average_per_person

  ############################################


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
  

  for each in stores 
    highest = 0
    product = ""

    for item in each[:products]
        if highest < item[:price] 
            highest = item[:price]
            product = item[:description]
        end
    end
    most_expensive_products_by_store.push(store_name: each, most_expensive_product:{description: product, price: highest})
  end

  puts most_expensive_products_by_store


input = ""

while input != "n" do
  puts "add a student"
  input = gets.chomp
  puts "Do you want to continue ? (y/n)"
  input = gets.chomp
end
        