class AddProcessCycleIdToSensorOutputs < ActiveRecord::Migration
  def change
    add_column :sensor_outputs, :process_cycle_id, :integer
  end
end
