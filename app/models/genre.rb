class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'キッチン' },
    { id: 3, name: '浴室' },
    { id: 4, name: 'お手洗い' },
  ]
end