class Franja < ApplicationRecord
<<<<<<< HEAD

	validates :primera_hasta, presence: true
	validates :segunda_hasta, presence: true
	validates :primera_precio, presence: true
	validates :segunda_precio, presence: true
	validates :tercera_precio, presence: true



	validates :primera_hasta, numericality: true, numericality: { less_than: :segunda_hasta, message: "Debe ser menor a la segunda franja sueldos" }
	validates :segunda_hasta, numericality: true, numericality: { greater_than: :primera_hasta }
	validates :primera_precio, numericality: true, numericality: { less_than: :segunda_precio }
  	validates :segunda_precio, numericality: true, numericality: { greater_than_or_equal: :primera_precio, less_than: :tercera_precio }
	validates :tercera_precio, numericality: true, numericality: { greater_than: :segunda_precio }
	



=======
	fecha = DateTime.now
	validates :fecha, presence: {message: "Debe ingresar la fecha /// tmb podriamos hacer que la fecha se genere automaticamente"}
	validates :primera_hasta, numericality: true, presence: true
	validates :primera_precio, numericality: true, presence: true
	validates :segunda_hasta, numericality: true
	validates :segunda_precio, numericality: true
	validates :tercera_precio, numericality: true, presence: true
>>>>>>> 13fe95910bd20b5b003c3292f96d3e48fe9c33ad
end
