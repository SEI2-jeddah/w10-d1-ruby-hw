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
people.each do |person|
    coffee_average_per_person.push(" name: " + person[:name])
    transactions.each do |transaction|
        if transactions[:type] == "COFFEE"
            num +=1
            total += transactions.amount
        end
    end
    result = total / num
    coffee_average_per_person.push(" :coffee_average" + result)

end
print coffee_average_per_person