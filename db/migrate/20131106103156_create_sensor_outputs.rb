class CreateSensorOutputs < ActiveRecord::Migration
  def change
    create_table :sensor_outputs do |t|
      t.decimal :position
      t.decimal :angle
      t.integer :latency

      t.timestamps
    end
  end
end
