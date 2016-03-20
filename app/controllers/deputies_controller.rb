class DeputiesController < ApplicationController
  before_action :set_deputy, only: [:show, :edit, :update, :destroy]

  # GET /deputies
  # GET /deputies.json
  def index
    @deputies = Deputy.all
  end

  # GET /deputies/1
  # GET /deputies/1.json
  def show
  end

  # GET /deputies/new
  def new
    @deputy = Deputy.new
  end

  # GET /deputies/1/edit
  def edit
  end

  # POST /deputies
  # POST /deputies.json
  def create
    @deputy = Deputy.new(deputy_params)

    respond_to do |format|
      if @deputy.save
        format.html { redirect_to @deputy, notice: 'Deputy was successfully created.' }
        format.json { render :show, status: :created, location: @deputy }
      else
        format.html { render :new }
        format.json { render json: @deputy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deputies/1
  # PATCH/PUT /deputies/1.json
  def update
    respond_to do |format|
      if @deputy.update(deputy_params)
        format.html { redirect_to @deputy, notice: 'Deputy was successfully updated.' }
        format.json { render :show, status: :ok, location: @deputy }
      else
        format.html { render :edit }
        format.json { render json: @deputy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deputies/1
  # DELETE /deputies/1.json
  def destroy
    @deputy.destroy
    respond_to do |format|
      format.html { redirect_to deputies_url, notice: 'Deputy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deputy
      @deputy = Deputy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deputy_params
      params.require(:deputy).permit(:ln, :fn, :sn, :birthday, :fraction_id)
    end
end
