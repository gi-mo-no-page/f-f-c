class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '少年' },
    { id: 2, name: '青年' },
    { id: 3, name: '少女' },
    { id: 4, name: 'レディース' }
  ]
end
