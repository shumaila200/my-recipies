class Recipe < ApplicationRecord
validates :name, presence: true 
validates :description, presence: true 
 
belongs_to :chef
end