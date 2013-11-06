CloudRegulator::Application.routes.draw do

  resources :process_configs
  resources :process_controller_outputs
  resources :sensor_outputs
  resources :process_cycles
  resources :regulator_processes

  root 'regulator_processes#index'
end
