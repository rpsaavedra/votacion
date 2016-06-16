class InstanciaController < ApplicationController
  before_action :set_instancium, only: [:show, :edit, :update, :destroy]

  # GET /instancia
  # GET /instancia.json
  def index
    @instancia = Instancium.all
  end

  # GET /instancia/1
  # GET /instancia/1.json
  def show
  end

  # GET /instancia/new
  def new
    @instancium = Instancium.new
  end

  # GET /instancia/1/edit
  def edit
  end

  # POST /instancia
  # POST /instancia.json
  def create
    @instancium = Instancium.new(instancium_params)

    respond_to do |format|
      if @instancium.save
        format.html { redirect_to @instancium, notice: 'Instancium was successfully created.' }
        format.json { render :show, status: :created, location: @instancium }
      else
        format.html { render :new }
        format.json { render json: @instancium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /instancia/1
  # PATCH/PUT /instancia/1.json
  def update
    respond_to do |format|
      if @instancium.update(instancium_params)
        format.html { redirect_to @instancium, notice: 'Instancium was successfully updated.' }
        format.json { render :show, status: :ok, location: @instancium }
      else
        format.html { render :edit }
        format.json { render json: @instancium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /instancia/1
  # DELETE /instancia/1.json
  def destroy
    @instancium.destroy
    respond_to do |format|
      format.html { redirect_to instancia_url, notice: 'Instancium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instancium
      @instancium = Instancium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instancium_params
      params.require(:instancium).permit(:name, :votos, :disponible, :descripcion, :winner, :otherx)
    end
end
