class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :article

  validates :user_id, uniqueness: { scope: :article_id }

  validate :vote_valid?

  private

  def vote_valid?
    errors.add(:user_id, "cannot have duplicate id's") if Vote.where(user_id: user_id, article_id: article_id).exists?
  end
end
