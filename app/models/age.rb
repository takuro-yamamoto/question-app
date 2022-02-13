class Age < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '10 ~ 14' },
    { id: 3, name: '15 ~ 19' },
    { id: 4, name: '20 ~ 24' },
    { id: 5, name: '25 ~ 29' },
    { id: 6, name: '30 ~ 34' },
    { id: 7, name: '35 ~ 39' },
    { id: 8, name: '40 ~ 44' },
    { id: 9, name: '45 ~ 49' },
    { id: 10, name: '50 ~ 54' },
    { id: 11, name: '55 ~ 59' },
    { id: 12, name: '60 ~ 64' },
    { id: 13, name: '65 ~ 69' },
    { id: 14, name: '70 ~ 74' },
    { id: 15, name: '75歳以上' }
  ]
  include ActiveHash::Associations
  has_many :users
end
