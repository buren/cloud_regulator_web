class CreateProcessConfigs < ActiveRecord::Migration
  def change
    create_table :process_configs do |t|
      t.decimal :k_constant
      t.decimal :ti_constant
      t.decimal :tr_constant
      t.decimal :td_constant
      t.decimal :n_constant
      t.decimal :beta_constant
      t.decimal :h_constant

      t.timestamps
    end
  end
end
