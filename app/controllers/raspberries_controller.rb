class RaspberriesController < ApplicationController
  before_action :set_raspberry, only: [:show, :edit, :update, :destroy]

  # GET /raspberries
  # GET /raspberries.json
  def index
    @raspberries = Raspberry.all
  end

  # GET /raspberries/1
  # GET /raspberries/1.json
  def show
  end

  # GET /raspberries/new
  def new
    @raspberry = Raspberry.new
  end

  # GET /raspberries/1/edit
  def edit
  end

  # POST /raspberries
  # POST /raspberries.json
  def create
    @raspberry = Raspberry.new(raspberry_params)

    respond_to do |format|
      if @raspberry.save
        format.html { redirect_to @raspberry, notice: 'Raspberry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @raspberry }
      else
        format.html { render action: 'new' }
        format.json { render json: @raspberry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raspberries/1
  # PATCH/PUT /raspberries/1.json
  def update
    respond_to do |format|
      if @raspberry.update(raspberry_params)
        format.html { redirect_to @raspberry, notice: 'Raspberry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @raspberry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raspberries/1
  # DELETE /raspberries/1.json
  def destroy
    @raspberry.destroy
    respond_to do |format|
      format.html { redirect_to raspberries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raspberry
      @raspberry = Raspberry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raspberry_params
      params.require(:raspberry).permit(:ip_address)
    end
end
