class CreateProcessControllerOutputs < ActiveRecord::Migration
  def change
    create_table :process_controller_outputs do |t|
      t.decimal :control_signal
      t.integer :process_cycle_id

      t.timestamps
    end
  end
end
