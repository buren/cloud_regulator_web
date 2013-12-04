class RegulatorProcessesController < ApplicationController

  def index
    @config = ProcessConfig.last
    @config = ProcessConfig.new unless @config
    @raspberry = Raspberry.last
  end

end
