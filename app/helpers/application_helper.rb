module ApplicationHelper
	def tipo_options
    [
      Tipo.all.pluck(:nombre)
      
    ]
  end

  
end
