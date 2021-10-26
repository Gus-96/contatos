class TelefonesController < ApplicationController
  before_action :set_telefone, only: %i[ show edit update destroy ]

  # GET /telefones or /telefones.json
  def index
    @telefones = Telefone.all
  end

  # GET /telefones/1 or /telefones/1.json
  def show
  end

  # GET /telefones/new
  def new
    @telefone = Telefone.new
  end

  # GET /telefones/1/edit
  def edit
  end

  # POST /telefones or /telefones.json
  def create
    @telefone = Telefone.new(telefone_params)

    respond_to do |format|
      if @telefone.save
        format.html { redirect_to @telefone, notice: "Telefone was successfully created." }
        format.json { render :show, status: :created, location: @telefone }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @telefone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /telefones/1 or /telefones/1.json
  def update
    respond_to do |format|
      if @telefone.update(telefone_params)
        format.html { redirect_to @telefone, notice: "Telefone was successfully updated." }
        format.json { render :show, status: :ok, location: @telefone }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @telefone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /telefones/1 or /telefones/1.json
  def destroy
    @telefone.destroy
    respond_to do |format|
      format.html { redirect_to telefones_url, notice: "Telefone was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_telefone
      @telefone = Telefone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def telefone_params
      params.require(:telefone).permit(:tipo, :numero, :pessoa_id)
    end
end
