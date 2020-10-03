class User <ApplicationRecord
    has_secure_password
    has_many :meal_plans
    has many :meals, through: :meal_plans
    has many :meal_schedule, through: :meals

    validates :name, :email, presence: true
    validates :email, uniqueness: true
end 