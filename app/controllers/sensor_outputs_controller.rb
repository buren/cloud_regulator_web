class SensorOutputsController < ApplicationController

  def create
    so = SensorOutput.new
    so.control_output = params[:output]
    so.latency =        params[:latency]
    so.angle =          params[:angle]
    so.position =       params[:position]
    so.save!
    render text: 'Success'
  end

end
