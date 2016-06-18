module OptionsHelper

	def instar
		total = Instancium.count


    i=0
    arreglo = Array.new
    subd = Array.new
    subd.push("Sin instancia")
    subd.push("Sin instancia")
    arreglo.push(subd)

    Instancium.where(disponible: 1).each do |ins|
    	subx = Array.new
    	subx.push(ins.name)
    	subx.push(ins.name)
    	arreglo.push(subx)
	end

	return arreglo
	end

    


end
