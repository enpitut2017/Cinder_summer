class Post < ApplicationRecord
    belongs_to :user
    has_many :companies, through: :post_companies
    has_many :post_companies, dependent: :destroy
    accepts_nested_attributes_for :post_companies

    validates :user_id, presence: true
end
