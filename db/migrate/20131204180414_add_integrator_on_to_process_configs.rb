class AddIntegratorOnToProcessConfigs < ActiveRecord::Migration
  def change
    add_column :process_configs, :integrator_on, :boolean
  end
end
