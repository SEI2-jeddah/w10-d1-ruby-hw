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

print "ANSWER 1 \n"

upper_case_full_names = []
students.each do |i|
  upper_case_full_names.push(i[:first_name].upcase + " " + i[:last_name].upcase)
end
print upper_case_full_names

print "\n"

#############################################
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

  print "ANSWER 2 \n"
  first_order_for_each_user = []
  
  users.each do |i|
  first_order_for_each_user.push(i[:orders].first)
  end
 print first_order_for_each_user
 print "\n"
##########################################################
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

print "ANSWER 3 \n"
coffee_average_per_person = []
num = 0
total = 0
 for i in people do
    for x in i[:transactions] do
        if x[:type] == "COFFEE"
            num += 1
            total += x[:amount]
        end
    end
    average = total / num
    print coffee_average_per_person =["#{i[:name]} " "coffee_average => " " #{average} "]
    end
print "\n"

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
    

    print "ANSWER 4 \n"

    most_expensive_products_by_store = stores.map do |store|

        expensive_product = 0
    
        description = ""
    
        store[:products].each do |desc|
    
         if desc[:price]  >  expensive_product
    
            expensive_product = desc[:price]
    
            description = desc[:description]
    
         end
    
        end
    
     
     p most_expensive_products_by_store= [ :store_name=> store[:store_name] , :most_expensive_product=> { description:description , price: expensive_product}] 
    
    end