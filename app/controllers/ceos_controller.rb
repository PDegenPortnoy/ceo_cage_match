class CeosController < ApplicationController
  before_action :set_ceo, only: [:show, :edit, :update, :destroy]

  # GET /ceos
  # GET /ceos.json
  def index
    @ceos = Ceo.all
  end

  # GET /ceos/1
  # GET /ceos/1.json
  def show
  end

  # GET /ceos/new
  def new
    @ceo = Ceo.new
  end

  # GET /ceos/1/edit
  def edit
  end

  # POST /ceos
  # POST /ceos.json
  def create
    @ceo = Ceo.new(ceo_params)

    respond_to do |format|
      if @ceo.save
        format.html { redirect_to @ceo, notice: 'Ceo was successfully created.' }
        format.json { render :show, status: :created, location: @ceo }
      else
        format.html { render :new }
        format.json { render json: @ceo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ceos/1
  # PATCH/PUT /ceos/1.json
  def update
    respond_to do |format|
      if @ceo.update(ceo_params)
        format.html { redirect_to @ceo, notice: 'Ceo was successfully updated.' }
        format.json { render :show, status: :ok, location: @ceo }
      else
        format.html { render :edit }
        format.json { render json: @ceo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ceos/1
  # DELETE /ceos/1.json
  def destroy
    @ceo.destroy
    respond_to do |format|
      format.html { redirect_to ceos_url, notice: 'Ceo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ceo
      @ceo = Ceo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ceo_params
      params.require(:ceo).permit(:name, :salary, :company, :company_revenue, :number_employees)
    end
end
