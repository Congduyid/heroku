class LoaisController < ApplicationController
  before_action :set_loai, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_nguoidung!

  # GET /loais
  # GET /loais.json
  def index
    @loais = Loai.all
  end

  # GET /loais/1
  # GET /loais/1.json
  def show
  end

  # GET /loais/new
  def new
    @loai = Loai.new
  end

  # GET /loais/1/edit
  def edit
  end

  # POST /loais
  # POST /loais.json
  def create
    @loai = Loai.new(loai_params)

    respond_to do |format|
      if @loai.save
        format.html { redirect_to @loai, notice: 'Loai was successfully created.' }
        format.json { render :show, status: :created, location: @loai }
      else
        format.html { render :new }
        format.json { render json: @loai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loais/1
  # PATCH/PUT /loais/1.json
  def update
    respond_to do |format|
      if @loai.update(loai_params)
        format.html { redirect_to @loai, notice: 'Loai was successfully updated.' }
        format.json { render :show, status: :ok, location: @loai }
      else
        format.html { render :edit }
        format.json { render json: @loai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loais/1
  # DELETE /loais/1.json
  def destroy
    @loai.destroy
    respond_to do |format|
      format.html { redirect_to loais_url, notice: 'Loai was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loai
      @loai = Loai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loai_params
      params.require(:loai).permit(:loaihang)
    end
end
