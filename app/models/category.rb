class Category < ApplicationRecord
  has_many :phrases, dependent: :destroy
  has_many :tips, dependent: :destroy
end
