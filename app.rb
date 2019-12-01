#1
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

  upper_case_full_names = students.map{
      |i|  (i[:first_name]+ " "+ i[:last_name]).upcase
  }

  print upper_case_full_names

  #2

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

  first_order_for_each_user = users.map{|i| i[:orders][0]}

p first_order_for_each_user


#3
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
      
     
       total=0 
       counter=0
       for transactions in person[:transactions] do
        if transactions[:type] == "COFFEE" && transactions[:type] != nil 
                total += transactions[:amount]
                counter += 1
       end
        end
        coffee_average_per_person.push({name: person[:name] , coffee_average: total/counter })
       
    end

  p coffee_average_per_person
 

#4

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
      
     
    max_price=0 
    max_product =""
    for product in store[:products] do
     if product[:price] > max_price
             max_price = product[:price]
             max_product = product[:description]
    end
     end
     most_expensive_products_by_store.push({store_name: store[:store_name] , most_expensive_product:{description:max_product ,price: max_price }  })
    
 end

 p most_expensive_products_by_store


#Bonus
students_list =[]
while(true) 
    p "add a student" 
    add_student = gets
    students_list.push(add_student)
    p "Do you want to continue ? (y/n)" 
    yes_no = gets[0].chomp.upcase
    if yes_no == "N"
        break
    end
end


p "your friends are:" 
puts students_list