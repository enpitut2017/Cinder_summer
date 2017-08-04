class PostCompany < ApplicationRecord
  belongs_to :post
  belongs_to :company
end
