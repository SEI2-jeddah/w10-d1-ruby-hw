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

  for student in students do
    studentName = student[:first_name] + ' ' +student[:last_name] 
    upper_case_full_names.push(studentName.upcase)
  end
#   print upper_case_full_names
 

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

  for userOrder in users do
    order = userOrder[:orders][0]
    first_order_for_each_user.push(order)
 
  end
#   print first_order_for_each_user


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

for person in people do 

    count=0
    newAmount=0
    for amount in person[:transactions]  do

        if amount[:type] == "COOFFEE" 
            newAmount += amount[:amount]
            count++
        end

    end
    avarge = newAmount / count 

      coffee_average_per_person.push({name: person[:name], coffee_average: avarge})
 
end
# print coffee_average_per_person


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


for store in stores do


    price = 0
    mostEx = {}

    for product in store[:products] do
        if product[:price] > price
            price = product[:price]
            mostEx = product
        end

    end
    most_expensive_products_by_store.push(store_name:store[:store_name],  most_expensive_product: mostEx)
end
print most_expensive_products_by_store
