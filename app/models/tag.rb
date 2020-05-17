class Tag < ApplicationRecord
    belongs_to :article
    belongs_to :category

    validate :tag_valid?
  
    private
    
    def tag_valid?
      if Tag.where(category_id: category_id, article_id: article_id).exists?
        errors.add(:category_id, "cannot have duplicate id's")
      end
    end
    
end
