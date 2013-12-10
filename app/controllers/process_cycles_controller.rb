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

    ref_sig = ReferenceSignal.last
    ref_sig.reference_value *= -1 if params[:req] and (params[:req].to_i%5).eql?(0)
    ref_sig.save!

    render json: data and return
  end

end
