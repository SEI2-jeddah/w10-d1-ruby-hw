#Q1


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
    fullname = name[:first_name] + ' ' +name[:last_name] 
    upper_case_full_names.push(fullname.upcase)
  end
  print upper_case_full_names


###############

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

for order in users 
  first_order_for_each_user.push(order[:orders][0]) 
end

print first_order_for_each_user





#####################
# Q3



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

for i in people do
   count = 0
    num = 0
    for amount in i[:transactions] do
 if amount[:type] == "COFFEE"
count += amount[:amount] 
num += 1
end
end
avarge = count / num 
 
coffee_average_per_person.push({name: i[:name], coffee_average: avarge})
end
print coffee_average_per_person



###################

# Q4

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
  

  for index in stores 
    highest = 0
    product = ""

    for item in index[:products]
        if highest < item[:price] 
            highest = item[:price]
            product = item[:description]
        end
    end

    most_expensive_products_by_store.push(store_name: index, most_expensive_product:{description: product, price: highest})
  end

  print most_expensive_products_by_store