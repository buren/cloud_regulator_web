class ProcessCyclesController < ApplicationController

  def live_cycles
    # req = (params[:req].to_i * 10)%11
    sos = SensorOutput.last(100)
    # sos = SensorOutput.where(id: req..(req+10)).reverse
    data = Array.new
    sos.each_with_index do |so, index|
      data << {
        x:  index,
        y: so.angle,
        z: so.position,
        a: so.latency
      }
    end
    render json: data and return
  end

end
