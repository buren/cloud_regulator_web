class ProcessCyclesController < ApplicationController

  def live_cycles
    req = (params[:req].to_i * 10)%11
    # sos = SensorOutput.last(10)
    sos = SensorOutput.where(id: req..(req+10)).reverse
    data = Array.new
    sos.each_with_index do |so, index|
      data << {
        x:  index,
        y: so.angle,
        z: so.position,
        a: so.latency
      }
    end
    # data << {
    #   x: 11*10,
    #   y: Random.rand(10),
    #   z: Random.rand(10),
    #   a: Random.rand(10)
    # }
    render json: data and return
  end

end
