class ProcessCycle < ActiveRecord::Base
  belongs_to :regulator_process

  has_many :sensor_outputs
  has_many :process_controller_outputs
end
