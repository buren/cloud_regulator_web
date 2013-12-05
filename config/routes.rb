CloudRegulator::Application.routes.draw do

  resources :reference_signals

  resources :raspberries

  resources :process_configs
  resources :process_controller_outputs
  resources :sensor_outputs
  resources :process_cycles
  resources :regulator_processes

  get 'reference', to: 'reference_signals#latest'

  get 'live_cycles', to: 'process_cycles#live_cycles' # Returns process_cycle values as JSON
  get 'config', to: 'process_configs#latest_config'    # Returns lastest config values

  root 'regulator_processes#index'
end
