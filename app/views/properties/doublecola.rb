=begin
Sheldon, Leonard, Penny, Rajesh and Howard are in the queue for a "Double Cola" drink vending machine; there are no other people in the queue. The first one in the queue (Sheldon) buys a can, drinks it and doubles! The resulting two Sheldons go to the end of the queue. Then the next in the queue (Leonard) buys a can, drinks it and gets to the end of the queue as two Leonards, and so on.

For example, Penny drinks the third can of cola and the queue will look like this:

Rajesh, Howard, Sheldon, Sheldon, Leonard, Leonard, Penny, Penny

Write a program that will return the name of a man who will drink the n-th cola.

Note that in the very beginning the queue looks like that:

Sheldon, Leonard, Penny, Rajesh, Howard

TEST RUN

names = ["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"]
r = 6
res = "Sheldon"
=end

names = ["Sheldon", "Leonard", "Penny", "Rajesh", "Howard"]
r = 6
names.each_with_index do |name,index|
	2.times.do
		names.push(name)
	end
	if index == r
		puts name
		break
	end
end
