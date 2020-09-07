class User < ApplicationRecord
    has_one :vaccination_record
    has_many :sugar_screens
    has_many :bp_screens
    
    has_secure_password
    validates :username, length: {minimum: 2}
    validates :username, uniqueness: { case_sensitive: false }
    validates :username, :email, :password, presence: true
    validates_exclusion_of :age, :in => 1..17, :message => "Must be at least 18 years of age to register"
end