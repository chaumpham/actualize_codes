#Mon Nov 13
number = [1,2,4,2]
double = number.map {|number| number*2}
p double

#Tue Nov 14
items = [
  {id: 1, body: 'foo'},
  {id: 2, body: 'bar'},
  {id: 3, body: 'foobar'}
  ]

p items.map {|item| item[:id] }
