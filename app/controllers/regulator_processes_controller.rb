class RegulatorProcessesController < ApplicationController

  def index
    @config = ProcessConfig.last
    @config = ProcessConfig.new unless @config
  end

end
