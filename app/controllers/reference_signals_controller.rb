class ReferenceSignalsController < ApplicationController
  before_action :set_reference_signal, only: [:show, :edit, :update, :destroy]

  # GET /reference_signals
  # GET /reference_signals.json
  def index
    @reference_signals = ReferenceSignal.all
  end

  # GET /reference_signals/1
  # GET /reference_signals/1.json
  def show
  end

  # GET /reference_signals/new
  def new
    @reference_signal = ReferenceSignal.new
  end

  # GET /reference_signals/1/edit
  def edit
  end

  # POST /reference_signals
  # POST /reference_signals.json
  def create
    @reference_signal = ReferenceSignal.new(reference_signal_params)
    @reference_signal.save!
    redirect_to :root and return
  end

  # PATCH/PUT /reference_signals/1
  # PATCH/PUT /reference_signals/1.json
  def update
    @reference_signal.update(reference_signal_params)
    @reference_signal.save!
    redirect_to :root and return
  end

  # DELETE /reference_signals/1
  # DELETE /reference_signals/1.json
  def destroy
    @reference_signal.destroy
    respond_to do |format|
      format.html { redirect_to reference_signals_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reference_signal
      @reference_signal = ReferenceSignal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reference_signal_params
      params.require(:reference_signal).permit(:reference_value, :manual_mode)
    end
end
