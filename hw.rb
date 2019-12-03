# 1. Return an array of each Student’s full name, upper-cased
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
  uppercase = []

 students.each do |i|
    uppercase[0] = ( i.values.map{|name| name.upcase })
    uppercase[0] = uppercase.join(" ")  
    upper_case_full_names.push(uppercase[0])
end

p upper_case_full_names

# 2. Find the first order for each user
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

  users.map do |num|
    first_order_for_each_user.push(num[:orders][0])
  end

  p first_order_for_each_user

# 3. Find the average amount spent on coffee, per transaction, for each person
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
  names = []

y = []
  people.map do |tran|
    arr1 = []
    tran[:transactions].map do |type|
       type[:type] == "COFFEE"? arr1.push(type[:amount]):false
    end
    x = 0
    arr1.length.times{ |i| x+= arr1[i]}
   x = x/arr1.length
   y.push(x)

  end
   people.map.with_index do |tran, idx| 
    names.push( Hash["name" => tran[:name], :coffee_average=>y[idx]]) end
p names

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
most_expensive_products_by_store = []
 stores.map.with_index do |pro, idx| 
  most_expensive_products_by_store.push(Hash["store_name" => stores[idx][:store_name], :most_expensive_product=>Hash[
    pro[:products][0][:price] > pro[:products][1][:price]? pro[:products][0] : pro[:products][1]
  ]])
end 
p most_expensive_products_by_store
