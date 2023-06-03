class Category < ApplicationRecord

has_many :admins, class_name: "admin", foreign_key: "category_id"
end
