class AddControlOutputToSensorOutputs < ActiveRecord::Migration
  def change
    add_column :sensor_outputs, :control_output, :decimal
  end
end
