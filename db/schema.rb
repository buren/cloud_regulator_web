# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20131204140529) do

  create_table "process_configs", force: true do |t|
    t.decimal  "k_constant",           precision: 10, scale: 0
    t.decimal  "ti_constant",          precision: 10, scale: 0
    t.decimal  "tr_constant",          precision: 10, scale: 0
    t.decimal  "td_constant",          precision: 10, scale: 0
    t.decimal  "n_constant",           precision: 10, scale: 0
    t.decimal  "beta_constant",        precision: 10, scale: 0
    t.decimal  "h_constant",           precision: 10, scale: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "regulator_process_id"
  end

  create_table "process_controller_outputs", force: true do |t|
    t.decimal  "control_signal",   precision: 10, scale: 0
    t.integer  "process_cycle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "process_cycles", force: true do |t|
    t.integer  "regulator_process_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "raspberries", force: true do |t|
    t.string   "ip_address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regulator_processes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sensor_outputs", force: true do |t|
    t.decimal  "position",         precision: 10, scale: 0
    t.decimal  "angle",            precision: 10, scale: 0
    t.integer  "latency"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "process_cycle_id"
  end

end
