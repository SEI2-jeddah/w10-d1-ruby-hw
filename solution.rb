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

  students.map do |student|
    name=""
    student.map do |key, value|
        name=name+" "+value
    end
    upper_case_full_names.push name.upcase
  end
#   puts upper_case_full_names 
# a shorter solution?:
  upper_case_full_names = []
  students.map do |student|
    upper_case_full_names.push "#{student[:first_name].upcase} #{student[:last_name].upcase}" 
  end
  puts "-------------1--------------"

  puts upper_case_full_names
  
  
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
  
for user in users do
    first_order_for_each_user.push user[:orders][0]
end
puts "-------------2--------------"

puts first_order_for_each_user

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
people.each do |person|
    avg=0
    count=0
    person[:transactions].each do |spending|
        if spending[:type]=="COFFEE"
            avg=avg+spending[:amount]
            count=count+1
        end
    end
    avg=avg/count
    puts avg
    result={name: person[:name], coffee_average: avg}
    coffee_average_per_person.push result

end
puts "-------------3--------------"

puts coffee_average_per_person

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

  stores.each do |store|
    most_expensive_product=store[:products][0]
    store[:products].each do |product|
        if product[:price]>most_expensive_product[:price]
            most_expensive_product=product
        end
    end
    result={store_name: store[:store_name], most_expensive_product: most_expensive_product}
    most_expensive_products_by_store.push result
  end
  puts "-------------4--------------"
  puts most_expensive_products_by_store

  imaginary_friends=[]
  while true do
    puts "Add a friend"
    imaginary_friends.push gets
    puts "Anyone else? (y/n)"
    if gets.chomp=="n"
        break
    end
  end
  puts "-------------5--------------"

  puts imaginary_friends

