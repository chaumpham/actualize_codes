items = [
  {id: 1, body: 'foo'},
  {id: 2, body: 'bar'},
  {id: 3, body: 'foobar'}
  ]

array = []
items.map {|items| array<< items[:id] }
p array