class AddIsPidToProcessConfigs < ActiveRecord::Migration
  def change
    add_column :process_configs, :is_pid, :boolean
  end
end
