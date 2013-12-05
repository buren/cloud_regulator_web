class RemoveReferenceValuesFromProcessConfig < ActiveRecord::Migration
  def change
    remove_column :process_configs, :manual_mode, :boolean
    remove_column :process_configs, :reference_signal, :decimal
  end
end
