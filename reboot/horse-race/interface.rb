puts "Welcome : Choose a horse"
horses = ["Speedy Gonzales", "Spit fire", "Bullet"]
horses.each { |horse| p horse }
puts "Choose a horse"
choice = gets.chomp

horses_race = horses.map { |h| {name: h, score: rand(100)}}

winner = horses_race.to_a.max_by { |h| h[:score] }
puts "The winnier is #{winner[:name]} with the score #{winner[:score]}"


puts "The list is :"
# horses_race =  [{:name=>"Speedy Gonzales", :score=>5}, ......]

sorted_horses = horses_race.sort_by { |h| h[:score] }
 p "Here the list"
sorted_horses.reverse.each_with_index do |horse_hash, index|
  puts "#{index + 1}-- #{horse_hash[:name]} -- #{horse_hash[:score]}"
end
