# # 1. Return an array of each Student’s full name, upper-cased
# students = [
#     {
#         first_name: "Wejdan",
#         last_name: "Alghamdi"
#     },
#     {
#         first_name: "Shahad",
#         last_name: "Bagarish",
#     },
#     {
#         first_name: "Doaa",
#         last_name: "Alalawi",
#     }
#   ]
#   upper_case_full_names = []
#   uppercase = []

#  students.each do |i|
#     uppercase[0] = ( i.values.map{|name| name.upcase })
#     uppercase[0] = uppercase.join(" ")  
#     upper_case_full_names.push(uppercase[0])
# end

# p upper_case_full_names

# # 2. Find the first order for each user
# users = [
#     {
#         name: "Mohammad",
#         orders: [
#             {
#                 description: "a bmx"
#             }
#         ]
#     },
#     {
#         name: "Ibtissam",
#         orders: [
#             {
#                 description: "honey"
#             },
#             {
#                 description: "Nintendo 3DS"
#             }
#         ]
#     },
#     {
#         name: "Yazeed",
#         orders: [
#             {
#                 description: "a Razer Blade"
#             },
#             {
#                 description: "The Arrow DVDs"
#             },
#             {
#                 description: "airpods"
#             },
#             {
#                 description: "a unicorn"
#             }
#         ]
#     }
#   ]
#   first_order_for_each_user = []

#   users.map do |num|
#     first_order_for_each_user.push(num[:orders][0])
#   end

#   p first_order_for_each_user

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

#   p people[2][:transactions][1][:type] == "COFFEE"

  people.map do |tran|
    tran[:transactions].map do |type|
       p type[:type] == "COFFEE"? type[:amount]:false
    end

  end