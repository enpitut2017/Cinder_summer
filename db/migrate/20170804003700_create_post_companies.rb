class CreatePostCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :post_companies do |t|
      t.references :post, foreign_key: true
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
