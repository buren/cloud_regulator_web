class ProcessConfigsController < ApplicationController

  def create
    set_config
  end

  def update
    set_config
  end

  def set_config
    pc = ProcessConfig.last
    pc = ProcessConfig.new unless pc
    pc.k_constant =    params[:process_config][:k_constant].to_f
    pc.ti_constant =   params[:process_config][:ti_constant].to_f
    pc.tr_constant =   params[:process_config][:tr_constant].to_f
    pc.td_constant =   params[:process_config][:td_constant].to_f
    pc.n_constant =    params[:process_config][:n_constant].to_f
    pc.beta_constant = params[:process_config][:beta_constant].to_f
    pc.h_constant =    params[:process_config][:h_constant].to_f
    pc.save!
    redirect_to :root and return
  end

  def latest_config
    render json: ProcessConfig.last
  end

end
