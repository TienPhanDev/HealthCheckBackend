rails g resource Api::V1::User username password_digest email age:integer
rails g resource Api::V1::Vaccine name 
rails g resource Api::V1::VaccinationRecord user_id:integer vaccine_id:integer administration_date:date
rails g resource Api::V1::BpScreen user_id:integer result:integer  
rails g resource Api::V1::SugarScreen user_id:integer result:integer

def leagues

headers = {'X-RapidAPI-key': 'key goes here'}

end
# HealthCheckBackend
