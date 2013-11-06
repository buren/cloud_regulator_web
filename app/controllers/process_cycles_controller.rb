class ProcessCyclesController < ApplicationController

  def live_cycles
    sos = SensorOutput.last(10)
    data = Array.new
    sos.each_with_index do |so, index|
      data << {
        x: index*10,
        y: so.angle,
        z: so.position,
        a: so.latency
      }
    end
    data << {
      x: 11*10,
      y: Random.rand(10),
      z: Random.rand(10),
      a: Random.rand(10)
    }
    render json: data and return
  end

end
