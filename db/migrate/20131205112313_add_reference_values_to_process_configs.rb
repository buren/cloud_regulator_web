class AddReferenceValuesToProcessConfigs < ActiveRecord::Migration
  def change
    add_column :process_configs, :reference_signal, :decimal
    add_column :process_configs, :manual_mode, :boolean
  end
end
