@user = User.create(email: "jon@snow.com", first_name: "Jon", last_name: "Snow", password: "asdfasdf", password_confirmation: "asdfasdf")
100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end
puts "100 Posts have been created"
