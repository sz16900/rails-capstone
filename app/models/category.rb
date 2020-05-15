class Category < ApplicationRecord
    has_many :tags
    has_many :articles, :through => :tags

    validates_uniqueness_of :name

end
