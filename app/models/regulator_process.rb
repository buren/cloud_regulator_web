class RegulatorProcess < ActiveRecord::Base
  has_one :process_config

  has_many :process_cycles
  has_many :sensor_outputs, through: :process_cycles
  has_many :process_controller_output, through: :process_cycles
end
