class ProcessCyclesController < ApplicationController

  def live_cycles
    plot_points = params[:points].blank? ? 30 : params[:points].to_i
    sos = SensorOutput.last(plot_points)
    data = Array.new
    sos.each_with_index do |so, index|
      data << {
        x:  index,
        y: so.angle,
        z: so.position,
        o: so.control_output,
        a: so.latency
      }
    end
    render json: data and return
  end

end
