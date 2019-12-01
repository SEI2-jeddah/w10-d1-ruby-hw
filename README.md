# Ruby HW
![ARRAYS](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVWBMdo6Ac3moY3tPnzMsFVnOscOR03SxkZ4sPGGhsWoQrYMPZ9g)
## 1. Return an array of each Student’s full name, upper-cased
```rb
students = [
  {
      first_name: ‘Wejdan’,
      last_name: ‘Alghamdi’
  },
  {
      first_name: ‘Shahad’,
      last_name: ‘Bagarish’,
  },
  {
      first_name: ‘Doaa’,
      last_name: ‘Alalawi’,
  }
]
upper_case_full_names = []
```
### Answer
```rb
[ ‘WEJDAN ALGHAMDI’, ‘SHAHAD BAGARISH’, ‘DOAA ALALAWI’ ]
```
## 2. Find the first order for each user
```rb
users = [
  {
      name: ‘Mohammad’,
      orders: [
          {
              description: ‘a bmx’
          }
      ]
  },
  {
      name: ‘Ibtissam’,
      orders: [
          {
              description: ‘honey’
          },
          {
              description: ‘Nintendo 3DS’
          }
      ]
  },
  {
      name: ‘Yazeed’,
      orders: [
          {
              description: ‘a Razer Blade’
          },
          {
              description: ‘The Arrow DVDs’
          },
          {
              description: ‘airpods’
          },
          {
              description: ‘a unicorn’
          }
      ]
  }
]
first_order_for_each_user = []
```
### Answer
```rb
[ {description: “a bmx”}, {description: “honey”}, {description: “a Razer Blade”} ]
```
## 3. Find the average amount spent on coffee, per transaction, for each person
```rb
people = [
  {
      name: ‘Ashjan’,
      transactions: [
          {
              type: ‘COFFEE’,
              amount: 7.43
          },
          {
              type: ‘TACOS’,
              amount: 14.65
          },
          {
              type: ‘COFFEE’,
              amount: 4.43
          }
      ]
  },
  {
      name: ‘Abeer’,
      transactions: [
          {
              type: ‘BIKES’,
              amount: 800.00
          },
          {
              type: ‘TACOS’,
              amount: 14.65
          },
          {
              type: ‘COFFEE’,
              amount: 4.43
          }
      ]
  },
  {
      name: ‘Nujud’,
      transactions: [
          {
              type: ‘COFFEE’,
              amount: 7.43
          },
          {
              type: ‘COFFEE’,
              amount: 100.00
          },
          {
              type: ‘COFFEE’,
              amount: 4.43
          }
      ]
  }
]
coffee_average_per_person = []
```
### Answer
```rb
[
  {name: “Ashjan”, :coffee_average=>5.93},
  {name: “Abeer”, :coffee_average=>4.43},
  {name: “Nujud”, :coffee_average=>37.28666666666667}
]
```
## 4. Find the most expensive product for each store, with the store name:
```rb
stores = [
  {
      store_name: ‘Virgin’,
      products: [
          {
              description: ‘PS4’,
              price: 9384.33
          },
          {
              description: ‘Pen’,
              price: 345.54
          }
      ]
  },
  {
      store_name: ‘Manuel’,
      products: [
          {
              description: ‘Bread’,
              price: 654.44
          },
          {
              description: ‘Cheese’,
              price: 323.43
          }
      ]
  },
  {
      store_name: ‘Noon’,
      products: [
          {
              description: ‘iPhone’,
              price: 345.43
          },
          {
              description: ‘TV’,
              price: 899.33
          }
      ]
  }
]
most_expensive_products_by_store = []
```
### Answer
```rb
[
  {store_name: “Virgin”, most_expensive_product: { description: “PS4", price: 9384.33}},
  {store_name: “Manuel”, most_expensive_product: { description: “Bread”, price: 654.44}},
  {store_name: “Noon”, most_expensive_product: { description: “TV”, price: 899.33}}
]
```
# Bonus
Write an infinite loop that will make you add all the your friends in the students list and after each add will ask if you want to quit the loop (yes/no) if the user choose no print all the students array
### Answer
```
>add a student
Diala Alghamdi
>Do you want to continue ? (y/n)
y
>add a student
Doaa AlHajjaji
>Do you want to continue ? (y/n)
y
>add a student
```
