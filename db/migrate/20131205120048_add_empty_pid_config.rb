class AddEmptyPidConfig < ActiveRecord::Migration

  def up
    ProcessConfig.create! is_pid: true
  end

end
