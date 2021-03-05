class Character < ApplicationRecord
    has_many :user_guides
    has_many :users, through: :user_guides
end
