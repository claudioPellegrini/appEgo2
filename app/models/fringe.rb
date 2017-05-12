class Fringe < ApplicationRecord
	validates :primera_hasta, presence: true, numericality: true, numericality: { min: 0,less_than: :segunda_hasta }
	validates :segunda_hasta, presence: true, numericality: true, numericality: { greater_than: :primera_hasta }

  	validates :primera_precio, presence: true, numericality: true, numericality: { min: 0, less_than: :segunda_precio }
  	validates :segunda_precio, presence: true, numericality: true, numericality: { greater_than_or_equal: :primera_precio, less_than: :tercera_precio }

  	validates :tercera_precio, presence: true, numericality: true, numericality: { greater_than: :segunda_precio }
end
