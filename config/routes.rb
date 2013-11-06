CloudRegulator::Application.routes.draw do

  resources :process_configs
  resources :process_controller_outputs
  resources :sensor_outputs
  resources :process_cycles
  resources :regulator_processes

  get 'live_cycles', to: 'process_cycles#live_cycles'

  root 'regulator_processes#index'
end
