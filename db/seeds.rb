
venues = ["Dendy Bar", "Oyster Bar"]
venues.each do |venue|
  Venue.create(name: venue)
end

users = ["Stephan", "Adam", "Kevin"]
users.each do |user|
  User.create(name: user)
end

(2).times do |tab|
  Tab.create(venue_id: 1)
end
(2).times do |tab|
  Tab.create(venue_id: 2)
end

user_tabs = [
  {user_id: 1, tab_id: 1},
  {user_id: 2, tab_id: 1},
  {user_id: 3, tab_id: 1}
]
user_tabs.each do |user_tab|
  UserTab.create(user_id: user_tab[:user_id], tab_id: user_tab[:tab_id])
end

payments = [100, 200, 300]
payments.each do |payment|
  Payment.create( { amount: payment, success: true, user_tab_id: 1 })
end