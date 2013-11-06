class CreateRegulatorProcesses < ActiveRecord::Migration
  def change
    create_table :regulator_processes do |t|
      t.string :name

      t.timestamps
    end
  end
end
