class PessoasController < ApplicationController
  before_action :set_pessoa, only: %i[ show edit update destroy ]

  # GET /pessoas or /pessoas.json
  def index
    @pessoas = Pessoa.all
  end

  # GET /pessoas/1 or /pessoas/1.json
  def show
  end

  # GET /pessoas/new
  def new
    @pessoa = Pessoa.new
    2.times { @pessoa.telefones.build }

  end

  # GET /pessoas/1/edit
  def edit
  @pessoa.telefones.build
  end

  # POST /pessoas or /pessoas.json
  def create
    @pessoa = Pessoa.new(pessoa_params)
    
    respond_to do |format|
      if @pessoa.save
        format.html { redirect_to @pessoa, notice: "Contato foi criado com sucesso." }
        format.json { render :show, status: :created, location: @pessoa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoas/1 or /pessoas/1.json
  def update
    respond_to do |format|
      if @pessoa.update(pessoa_params)
        format.html { redirect_to @pessoa, notice: "Contato foi atualizado com sucesso." }
        format.json { render :show, status: :ok, location: @pessoa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoas/1 or /pessoas/1.json
  def destroy
    @pessoa.destroy
    respond_to do |format|
      format.html { redirect_to pessoas_url, notice: "Contato foi deletado com sucesso." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa
      @pessoa = Pessoa.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pessoa_params
      params.require(:pessoa).permit(:nome, :idade, :cpf, :genero_id , telefones_attributes: [:id, :tipo, :numero, :pessoa_id, :_destroy])
    end
end
