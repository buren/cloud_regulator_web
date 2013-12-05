class RegulatorProcessesController < ApplicationController

  def index
    @pid_config = ProcessConfig.where(is_pid: true).last
    @pid_config = ProcessConfig.new unless @pid_config

    @pi_config = ProcessConfig.where(is_pid: false).last
    @pi_config = ProcessConfig.new unless @pi_config

    @raspberry = Raspberry.last

    @reference = ReferenceSignal.last
    @reference = ReferenceSignal.new unless  @reference
  end

end
