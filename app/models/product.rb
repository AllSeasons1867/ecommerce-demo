class Product < ApplicationRecord
    validates_presence_of :title, :description, :price
    has_rich_text :description
    has_many :reviews, dependent: :destroy
end
