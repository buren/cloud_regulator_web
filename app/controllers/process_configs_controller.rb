class ProcessConfigsController < ApplicationController

  def create
    set_config
  end

  def update
    set_config
  end

  def set_config
    pc = ProcessConfig.where(is_pid: params[:process_config][:is_pid].eql?('true')).last
    pc = ProcessConfig.new unless pc

    pc.is_pid =        params[:process_config][:is_pid].eql?('true')

    pc.k_constant =    params[:process_config][:k_constant].to_f
    pc.td_constant =   params[:process_config][:td_constant].to_f
    pc.n_constant =    params[:process_config][:n_constant].to_f
    pc.beta_constant = params[:process_config][:beta_constant].to_f
    pc.h_constant =    params[:process_config][:h_constant].to_f
    pc.integrator_on = params[:process_config][:integrator_on].eql?('true')
    pc.ti_constant =   params[:process_config][:ti_constant].to_f
    pc.tr_constant =   params[:process_config][:tr_constant].to_f
    pc.save!
    redirect_to :root and return
  end

  def latest_config
    render json: ProcessConfig.where(is_pid: params[:pid].eql?('true')).last
  end

end
