class Ingredient < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :first, presence: true
  validates :second, presence: true
  validates :considerations, presence: true
end
