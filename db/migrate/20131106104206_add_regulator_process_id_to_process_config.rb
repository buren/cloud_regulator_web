class AddRegulatorProcessIdToProcessConfig < ActiveRecord::Migration
  def change
    add_column :process_configs, :regulator_process_id, :integer
  end
end
