class CreateReferenceSignals < ActiveRecord::Migration
  def change
    create_table :reference_signals do |t|
      t.decimal :reference_value
      t.boolean :manual_mode

      t.timestamps
    end
  end
end
