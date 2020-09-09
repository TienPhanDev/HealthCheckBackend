User.destroy_all
BpScreen.destroy_all
SugarScreen.destroy_all
VaccinationRecord.destroy_all

user1 = User.create!(username: "winnie the pooh", password:"foobar", age:66, email:'hello@aol.com')
VaccinationRecord.create!(
    user_id:1,
    tetanus: false,
    flu: false,
    pneumonia: true,
    shingles: false
)

45.times do |index|
SugarScreen.create(
        user_id:1,
        result:rand(105..200),
        date: DateTime.now - 365 + (index + 1)
)
end

45.times do |index|
    BpScreen.create(
            user_id:1,
            systolic_pressure:rand(110..200),
            diastolic_pressure:rand(80..120),
            date: DateTime.now - 365 + (index + 1)
    )
end




