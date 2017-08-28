class Chef <ApplicationRecord

has_many :recipes
has_secure_password
validates :password, presence: true, length: {minimum: 5}, allow_nil: true
end

