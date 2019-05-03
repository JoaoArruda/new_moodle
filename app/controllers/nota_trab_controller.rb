class NotaTrabController < ApplicationController
  before_action :set_nota_trab, only: [:show, :edit, :update, :destroy]

  # GET /nota_trab
  # GET /nota_trab.json
  def index
    @nota_trab = NotaTrab.all
  end

  # GET /nota_trab/1
  # GET /nota_trab/1.json
  def show
  end

  # GET /nota_trab/new
  def new
    @nota_trab = NotaTrab.new
  end

  # GET /nota_trab/1/edit
  def edit
  end

  # POST /nota_trab
  # POST /nota_trab.json
  def create
    @nota_trab = NotaTrab.new(nota_trab_params)

    respond_to do |format|
      if @nota_trab.save
        format.html { redirect_to @nota_trab, notice: 'Nota trab was successfully created.' }
        format.json { render :show, status: :created, location: @nota_trab }
      else
        format.html { render :new }
        format.json { render json: @nota_trab.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nota_trab/1
  # PATCH/PUT /nota_trab/1.json
  def update
    respond_to do |format|
      if @nota_trab.update(nota_trab_params)
        format.html { redirect_to @nota_trab, notice: 'Nota trab was successfully updated.' }
        format.json { render :show, status: :ok, location: @nota_trab }
      else
        format.html { render :edit }
        format.json { render json: @nota_trab.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nota_trab/1
  # DELETE /nota_trab/1.json
  def destroy
    @nota_trab.destroy
    respond_to do |format|
      format.html { redirect_to nota_trab_index_url, notice: 'Nota trab was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nota_trab
      @nota_trab = NotaTrab.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nota_trab_params
      params.require(:nota_trab).permit(:nota, :aluno_id, :professor_id, :disciplina_id)
    end
end
