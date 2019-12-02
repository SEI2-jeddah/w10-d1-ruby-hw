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
 na =   name[:first_name] +" " + name[:last_name]
 na = na.upcase
 upper_case_full_names.push(na)

    
end

p upper_case_full_names

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
    name = order[:orders][0]
    first_order_for_each_user.push(name)
    
end

p first_order_for_each_user

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
    amount = 0
    number = 0
    for coffee in person[:transactions] do

        if coffee[:type] == "COFFEE"
            amount += coffee[:amount]
            number += 1
            
        end
        
    end
    average = amount/number 
    puts "#{person[:name]} Average coffe is #{average}"
  end

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
  for element in stores do
    price1 = 0
    product = ""
    for price in element[:products] do
        if price[:price] > price1
            price1 = price[:price]
            product = price[:description]
        end
    end

    most_expensive_products_by_store.push( "store name: #{element[:store_name]} most_expensive_product: description: #{product}  price: #{price1}")

        end
p most_expensive_products_by_store