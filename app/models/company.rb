class Company < ApplicationRecord
    has_many :posts, through: :post_companies
    has_many :post_companies
end
