class CreateRaspberries < ActiveRecord::Migration
  def change
    create_table :raspberries do |t|
      t.string :ip_address

      t.timestamps
    end
  end
end
