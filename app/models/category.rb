class Category < ApplicationRecord
    has_many :tags
    has_many :articles, :through => :tags

    validates :name, uniqueness: true

end
