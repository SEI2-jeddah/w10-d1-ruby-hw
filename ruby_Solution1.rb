# # # # 1. Return an array of each Student’s full name, upper-cased

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
        puts "Answer 1"

upper_case_full_names = students.map do |stu|
    full_name = " #{stu[:first_name]} #{stu[:last_name]}"
    full_name.upcase
end

puts upper_case_full_names.inspect

# # #     # question 1 ended

# #     # 2. Find the first order for each user

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
        puts "Answer 2"
    first_order_for_each_user  = users.map do |order|
       first_order_for_each_user = "#{order[:orders].first}"
end
puts first_order_for_each_user.inspect

#  # question 2 ended


# # 3. Find the average amount spent on coffee, per transaction, for each person

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

        puts "Answer 3"

    coffee_average_per_person = people.map do |person|

        coffee_sum = []
        person[:transactions].map do |transaction|
            if transaction[:type] == 'COFFEE'
                coffee_sum.push(transaction[:amount])
            end
        end

        {
        name: person[:name] ,
        coffee_average: coffee_sum.reduce(:+) / coffee_sum.length
        }
    end

    puts coffee_average_per_person

#  # question 3 ended

# 4. Find the most expensive product for each store, with the store name:

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
        puts "Answer 4"

   most_expensive_products_by_store = stores.map do |store|
        expensive = store[:products].max_by do |product|
            product[:price]
        end

        {
           name: store[:store_name] ,
           price: expensive[:price]
        }
    end

    puts most_expensive_products_by_store

#  # question 4 ended
