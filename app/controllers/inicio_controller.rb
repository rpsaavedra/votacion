class InicioController < ApplicationController
	@id_ins=0

  def index
  	@ola=1

  	@opcion = Option.where()

  end


  def home
  end


  def edit

  	id_op = params[:opt]
  	votado = Option.where(id: id_op).take
  	votado.votos+=1;
  	votado.save

  	respond_to do |format|
        format.html { redirect_to root_path, notice: 'Option was successfully created.' }
        format.json { render :show, status: :created, location: root_path }
    end
   end


  def start
  	coso = params[:id]
    total = Option.count

    i=0
    arreglo = Array.new

    Option.where(instancia: coso).each do |opt|
    	id = opt.id
      name= opt.name
      votos= opt.votos
      descripcion = opt.descripcion
      disponible= opt.disponible
      result = {:id => id, :name => name, :votos => votos, :descripcion => descripcion, :disponible => disponible}
      arreglo.push(result)
    end
    response = {:opciones => arreglo}
    render:json => response
  end


end
