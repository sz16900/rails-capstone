class Tag < ApplicationRecord
  belongs_to :article
  belongs_to :category

  validate :tag_valid?

  validates :category_name, presence: true

  accepts_nested_attributes_for :article

  private

  def tag_valid?
    if Tag.where(category_id: category_id, article_id: article_id).exists?
      errors.add(:category_id, "cannot have duplicate id's")
    else
      return true
    end
  end
end
