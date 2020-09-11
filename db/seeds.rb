User.destroy_all
BpScreen.destroy_all
SugarScreen.destroy_all
VaccinationRecord.destroy_all

user1 = User.create!(username: "developer1", password:"foobar", age:66, email:'elonmusk@gmail.com')
VaccinationRecord.create!(
    user_id:1,
    tetanus: false,
    flu: false,
    pneumonia: true,
    shingles: false
)
index=1
20.times do |index|
SugarScreen.create(
        user_id:1,
        result:rand(105..200),
        date: (DateTime.now-30) + index
)
end

20.times do |index|
    BpScreen.create(
            user_id:1,
            systolic_pressure:rand(110..200),
            diastolic_pressure:rand(80..120),
            date: (DateTime.now-30) + index
    )
end

# 15.times do |index|
#     SugarScreen.create(
#             user_id:1,
#             result:rand(105..200),
#             date: 11/`#{index+1}`/2019
# )
# end
    
# 15.times do |index|
#         BpScreen.create(
#                 user_id:1,
#                 systolic_pressure:rand(110..200),
#                 diastolic_pressure:rand(80..120),
#                 date: 11/`#{index+1}`/2019
#         )
# end


# SugarScreen.create(user_id:1, result:rand(105..200), date: '11/11/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '11/12/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '11/13/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '11/14/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '11/15/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '11/16/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '11/17/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '11/18/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '11/19/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '11/20/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '11/21/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '11/22/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '11/23/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '11/24/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '11/25/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '11/26/2019')

# SugarScreen.create(user_id:1, result:rand(105..200), date: '10/17/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '10/18/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '10/19/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '10/20/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '10/21/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '10/22/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '10/23/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '10/24/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '10/25/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '10/26/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '10/27/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '10/28/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '10/29/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '10/30/2019')
# SugarScreen.create(user_id:1, result:rand(105..200), date: '10/31/2019')



# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '11/11/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '11/12/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '11/13/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '11/14/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '11/15/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '11/16/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '11/17/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '11/18/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '11/19/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '11/20/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '11/21/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '11/22/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '11/23/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '11/24/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '10/15/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '10/16/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '10/17/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '10/18/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '10/19/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '10/20/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '10/21/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '10/22/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '10/23/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '10/24/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '10/25/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '10/26/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '10/27/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '10/28/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '10/29/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '10/30/2019')
# BpScreen.create(user_id:1, systolic_pressure:rand(110..200), diastolic_pressure:rand(80..120), date: '10/31/2019')
# 15.times do |n|
#     name  = Faker::Name.name
#     email = "example-#{n+1}@railstutorial.org"
#     BpScreen.create!(name:  name,
#                 email: email,
#                 password:              password,
#                 password_confirmation: password,
#                 activated: true,
#                 date: DateTime.now)
# end





