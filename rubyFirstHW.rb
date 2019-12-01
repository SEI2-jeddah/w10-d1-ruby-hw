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
p "1--------------"
upper_case_full_names = []
students.each do |i|
    upper_case_full_names.push("#{i[:first_name].upcase} #{i[:last_name].upcase}")
  end

p upper_case_full_names
p "2--------------"

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

users.each do |i|
    first_order_for_each_user.push(i[:orders].first)
end
p first_order_for_each_user
p "3--------------"
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

people.each do |i|
    count = 0
    average = 0
    i[:transactions].each do |t|
        # average = 0
        if t[:type] == "COFFEE"
            average += t[:amount].to_f
            count += 1
        end
    end
    average = average / count
    # coffee_average_per_person.push({name: "#{item[:name]}", coffee_average: "#{average}"})
    coffee_average_per_person.push("{name: #{i[:name]}, coffee_Average: '#{average}'}")
   
end

puts coffee_average_per_person

p "4--------------"
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
most_expensive_products_by_store = stores.map do |a| 

    des = ''
    max = 0

    a[:products].map do |product| 
    
        if product[:price] > max
            des = product[:description]
            max = product[:price]
        end

    end
    puts "{store_name: #{a[:store_name]}, most_expensive_product: {description: #{des}, price: #{max}}}"
end