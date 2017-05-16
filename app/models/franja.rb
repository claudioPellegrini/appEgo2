class Franja < ApplicationRecord

	validates :fecha, presence: {message: "Debe ingresar la fecha /// tmb podriamos hacer que la fecha se genere automaticamente"}
	validates :primera_hasta, numericality: true, presence: true
	validates :primera_precio, numericality: true, presence: true
	validates :segunda_hasta, numericality: true
	validates :segunda_precio, numericality: true
	validates :tercera_precio, numericality: true, presence: true
end
