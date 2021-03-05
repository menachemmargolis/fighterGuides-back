class User < ApplicationRecord
    has_many :user_guides
    has_many :characters, through: :user_guides

end
