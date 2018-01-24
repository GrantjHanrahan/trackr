
User.destroy_all
user1 = User.create name:'Grant Test', email:'grant@test.co', password: 'chicken', avatar: 'https://jsns.eu/components/com_jsn/assets/img/default.jpg', age:28, height:1.78, weight:72

user2 = User.create name:'Grantelia Test2', email: 'grantelia@test.co', password: 'chicken', avatar: 'https://jsns.eu/components/com_jsn/assets/img/default.jpg', age:22, height:1.65, weight:62
puts "Created #{ User.all.length } users."

Workout.destroy_all
workout1 = Workout.create workout_name: "Bay Run", date: '2018/02/22'

workout2 = Workout.create workout_name: "Bay Run 2", date: '2018/02/24'

workout3 = Workout.create workout_name: "Strength Training 1", date: '2018/01/24'

workout4 = Workout.create workout_name: "Bay Walk 1", date: '2018/02/22'

workout5 = Workout.create workout_name: "Strength Training 2", date: '2018/01/30'

workout6 = Workout.create workout_name: "Bay Walk 2", date: '2018/02/23'

puts "Created #{ Workout.all.length } workouts."


# activ1 = Activity.create activity_type:"run",length:"60 mins"
# activ2 = Activity.create activity_type:"run", length:"58 mins"
# activ3 = Activity.create activity_type:"strength", length:"30 mins"
# activ4 = Activity.create activity_type:"strength", length:"20 mins"
# activ5 = Activity.create activity_type:"strength", length:"80 mins"
# activ6 = Activity.create activity_type:"hiit", length:"20 mins"
# activ7 = Activity.create activity_type:"hiit", length:"15 mins"
# puts "Created #{ Activity.all.length } activities."

user1.workouts << workout1 << workout2 << workout3 << workout5
user2.workouts << workout2 << workout4 << workout6

# workout1.activities << activ1
# workout2.activities << activ2
# workout3.activities << activ3 << activ4
# workout4.activities << activ5
# workout5.activities << activ6 << activ7
