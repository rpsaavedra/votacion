module InicioHelper

	@insta_actual=nil

	 def cargo
	 	puts Instancium.count
	 	
	 	if Instancium.count >0 
	  		ins = Instancium.where(disponible: 1).take
	  
	  			if(ins !=nil)
	  				@insta_actual=ins
	  				@id_ins=ins.id
	  				return ins.name
	  				
	  				
	  			end

	  		return "NO hay Instancias disponibles"
	  	end
	  	return "no hay instancias"

 	 end

 	 def ruta
 	 	if(@insta_actual !=nil)
 	 		return instancium_path(@insta_actual)
 		 end
 	end


 	 def describir
 	 	if(@insta_actual !=nil)
 	 		return @insta_actual.descripcion
 		 end
 	 end






end
