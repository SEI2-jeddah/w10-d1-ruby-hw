## 1. Return an array of each Student’s full name, upper-cased

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
for i in students
    upper_case_full_names.push(i[:first_name].upcase+" " + i[:last_name].upcase
    )
end

p upper_case_full_names


## 2. Find the first order for each user

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

for i in users 
first_order_for_each_user.push(i[:orders][0]) 
end
p first_order_for_each_user


## 3. Find the average amount spent on coffee, per transaction, for each person

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

puts coffee_average_per_person

## 4. Find the most expensive product for each store, with the store name:

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
p most_expensive_products_by_store