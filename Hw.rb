students = 
[
  { first_name: "Wejdan", last_name: "Alghamdi" },
  { first_name: "Shahad", last_name: "Bagarish", },
  { first_name: "Doaa", last_name: "Alalawi",  }
]

puts "first ruby exercise "

upper_case_full_names = students.map do |i|
    full_name = " #{i[:first_name]} #{i[:last_name]}".upcase
end
p upper_case_full_names


# -----------------------------------------------------

users = [
  {
    name: "Mohammad",
    orders: [{description: "a bmx"}]
  },
  {
      name: "Ibtissam",
      orders: [ {description: "honey"}, {description: "Nintendo 3DS"} ]
  },
  {
      name: "Yazeed",
      orders: [ { description: "a Razer Blade" }, { description: "The Arrow DVDs"}, { description: "airpods" }, {description: "a unicorn"}]
  }
]

# puts first_order_for_each_user 
first_order_for_each_user = []
first_order_for_each_user = users.map{|i|  i[:orders].first}
p first_order_for_each_user

# ---------------------------------------------------------

people = [
  {
      name: "Ashjan",
      transactions: [
          { type: "COFFEE", amount: 7.43},
          { type: "TACOS", amount: 14.65},
          { type: "COFFEE", amount: 4.43}
      ]
  },
  {
      name: "Abeer",
      transactions: [
          { type: "BIKES", amount: 800.00 },
          { type: "TACOS", amount: 14.65 },
          { type: "COFFEE", amount: 4.43 }
      ]
  },
  {
      name: "Nujud",
      transactions: [
          { type: "COFFEE", amount: 7.43  },
          { type: "COFFEE", amount: 100.00 },
          {type: "COFFEE", amount: 4.43}
      ]
  }
]


coffee_average_per_person = people.map do |i| 
    num = 0
 count = 0
    i[:transactions].map do |transactions| 
        if transactions[:type] == 'COFFEE'
            num += transactions[:amount]
            count +=1
        end

    end
    puts "#{i[:name]} #{num / count } "
end 


# ------------------------------------------

stores = [
  {
      store_name: "Virgin",
      products: 
      [
          { description: "PS4", price: 9384.33},
          {description: "Pen", price: 345.54 }
      ]
  },
  {
      store_name: "Manuel",
      products: 
      [
          {description: "Bread",  price: 654.44},
          {description: "Cheese", price: 323.43 }
      ]
  },
  {
      store_name: "Noon",
      products: [
          {description: "iPhone",price: 345.43},
          {description: "TV",price: 899.33}
      ]
  }
]

most_expensive_products_by_store = stores.map do |a| 

    description = ''
    most = 0

    a[:products].map do |product| 
    
        if product[:price] > most
            description = product[:description]
            most = product[:price]
        end

    end
    puts "#{a[:store_name]}, most_expensive_product:#{description}, price: #{most}"

end
