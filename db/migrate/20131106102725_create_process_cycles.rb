class CreateProcessCycles < ActiveRecord::Migration
  def change
    create_table :process_cycles do |t|
      t.integer :regulator_process_id

      t.timestamps
    end
  end
end
