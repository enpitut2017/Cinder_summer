class Post < ApplicationRecord
    belongs_to :user
    has_many :posts, through: :post_companies
    has_many :post_companies
    accepts_nested_attributes_for :post_companies

    validates :user_id, presence: true
end
