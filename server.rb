# Q1
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
    upper_case_full_names.push(name[:first_name].upcase + " " + name[:last_name].upcase)
end
p upper_case_full_names
p '----'
#Q2
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
  for obj in users do 
    first_order_for_each_user.push(obj[:orders][0])
  end

  p first_order_for_each_user
  p '----'
  #Q3
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
count = 0
avg = 0
for person in people do 
    for transaction in person[:transactions] do 
        if transaction[:type] == "COFFEE"
            count += 1
            avg += transaction[:amount] 
        end
    end
    obj = {
        name: person[:name],
        coffee_average: avg / count
    }
    count = 0
    avg = 0
    coffee_average_per_person.push(obj)
    
end
p coffee_average_per_person
p '----'

#Q4
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
max = 0
p = ''
for store in stores do 
   store[:products].each do |product|
    if max < product[:price]
        max = product[:price]
        p = product[:description]
    end
   end
   obj ={
    store_name: store[:store_name],
    most_expensive_product: {
        description: p,
        price: max
    }
   }
   most_expensive_products_by_store.push(obj)
   max = 0 
   p = ''
end
puts most_expensive_products_by_store
p '----'


name = []
input = ''
until input == 'n'
    puts "add a student"
    name.push(gets.chomp)
    puts 'Do you want to continue ? (y/n)'
    input = gets.chomp
end

p name