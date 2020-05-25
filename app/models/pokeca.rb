class Pokeca < ApplicationRecord
  belongs_to :box
  belongs_to :genre
  belongs_to :rare
end
