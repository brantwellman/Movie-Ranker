
User.create(
	username: 'Brant',
	email: 'myemail@email.com',
	password: 'validpass',
	password_confirmation: 'validpass'
)

6.times do |i|
	List.create(year: (2015 - i), user_id: 1)
end

10.times do |i|
	Movie.create(title: "The Red Dog ##{i}", user_id: 1, list_id: 1)
end

11.times do |i|
	Movie.create(title: "The Purple Cape ##{i}", user_id: 1, list_id: 2)
end

12.times do |i|
	Movie.create(title: "Bill: The Mastermind ##{i}", user_id: 1, list_id: 3)
end

13.times do |i|
	Movie.create(title: "Queen Perth ##{i}", user_id: 1, list_id: 4)
end

14.times do |i|
	Movie.create(title: "The Collar Controversy ##{i}", user_id: 1, list_id: 5)
end


