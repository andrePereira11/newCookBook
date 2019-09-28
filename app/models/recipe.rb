class Recipe < ApplicationRecord
  belongs_to :recipe_type
  belongs_to :cuisine

  validates :title, presence: true
  validates :difficulty, presence: true
  validates :cook_time, presence: true
  validates :ingredients, presence: true
  validates :cook_method, presence: true
  validates :recipe_type, presence: true
  validates :cuisine, presence: true

  def cook_time_min
    "#{cook_time} minutos"
  end
end
