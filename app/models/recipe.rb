class Recipe < ApplicationRecord
validates :name, presence: true 
validates :description, presence: true 
belongs_to :chef
validates :chef_id, presence: true
default_scope -> {order(updated_at: :desc)}
end