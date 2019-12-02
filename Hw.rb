students = [
  {
      first_name: "Wejdan",
      last_name: " Alghamdi"
  },
  {
      first_name: "Shahad",
      last_name: " Bagarish",
  },
  {
      first_name: "Doaa",
      last_name: " Alalawi",
  }
]
upper_case_full_names = []
for  i  in students  do
    fullname=i[:first_name] + i[:last_name]
    fullname= fullname.upcase
    upper_case_full_names.push(fullname)
end

puts upper_case_full_names.inspect



#-------------------------------


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


for i in users do 

    first_order_for_each_user.push(i[:orders][0])
end 
puts first_order_for_each_user

#----------------------------------------------

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
sum=0
count = 0
for i in people do 
    for j in i[:transactions]
    if i[:type]=="COFFEE"
        sum=sum+i[:amount]
count++
  
    end
end
    avrge=sum/count
    coffee_average_per_person.push("name = " + i[:name] + " the amount is "+ avrge )
end 
puts coffee_average_per_person


#----------------------------------

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

for i in stores do
    max = 0
    for j in i[:products] do
        if j[:price] > max
            max  = j[:price]
            exp = j
        end

    end

    most_expensive_products_by_store.push(store_name:i[:store_name],  most_expensive_product: exp)
  end

  puts most_expensive_products_by_store 