
User.destroy_all
user1 = User.create name:'Grant Test', email:'grant@test.co', password: 'chicken', avatar: 'https://jsns.eu/components/com_jsn/assets/img/default.jpg', age:28, height:1.78, weight:72

user2 = User.create name:'Grantelia Test2', email: 'grantelia@test.co', password: 'chicken', avatar: 'https://jsns.eu/components/com_jsn/assets/img/default.jpg', age:22, height:1.65, weight:62
puts "Created #{ User.all.length } users."
