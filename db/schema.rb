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

ActiveRecord::Schema.define(version: 2018_05_31_013308) do

  create_table "mst_pjs", primary_key: "pj_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "hojn_id", null: false
    t.string "pj_name", limit: 256, null: false
    t.string "pj_overview", limit: 256
    t.bigint "inst_user_id", null: false
    t.datetime "inst_ymd", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updt_ymd", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "del_ymd", default: -> { "CURRENT_TIMESTAMP" }
    t.bigint "del_flg", null: false
    t.string "updt_pgm_id", limit: 256
    t.string "updt_history", limit: 256
    t.string "updt_history_tanto", limit: 256
  end

  create_table "mst_subpjs", primary_key: "subpj_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "hojn_id", null: false
    t.bigint "pj_id", null: false
    t.string "pj_name", limit: 256, null: false
    t.string "pj_overview", limit: 256
    t.string "subpj_name", limit: 256, null: false
    t.string "subpj_overview", limit: 256
    t.bigint "inst_user_id", null: false
    t.datetime "inst_ymd", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updt_ymd", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "del_ymd", default: -> { "CURRENT_TIMESTAMP" }
    t.bigint "del_flg", null: false
    t.string "updt_pgm_id", limit: 256
    t.string "updt_history", limit: 256
    t.string "updt_history_tanto", limit: 256
  end

  create_table "mst_teams", primary_key: "team_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "hojn_id", null: false
    t.bigint "pj_id", null: false
    t.string "pj_name", limit: 256, null: false
    t.string "pj_overview", limit: 256
    t.bigint "subpj_id", null: false
    t.string "subpj_name", limit: 256, null: false
    t.string "subpj_overview", limit: 256
    t.string "team_name", limit: 256, null: false
    t.string "team_overview", limit: 256
    t.bigint "inst_user_id", null: false
    t.datetime "inst_ymd", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updt_ymd", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "del_ymd", default: -> { "CURRENT_TIMESTAMP" }
    t.bigint "del_flg", null: false
    t.string "updt_pgm_id", limit: 256
    t.string "updt_history", limit: 256
    t.string "updt_history_tanto", limit: 256
  end

  create_table "trn_budget_details", primary_key: "bg_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "pj_id", null: false
    t.bigint "subpj_id", null: false
    t.bigint "team_id", null: false
    t.bigint "pj_name", null: false
    t.bigint "subpj_name", null: false
    t.bigint "team_name", null: false
    t.string "bg_title", limit: 256
    t.bigint "bg_kind", null: false
    t.string "bg_detail", limit: 256, null: false
    t.integer "bg_unit_price", null: false
    t.integer "bg_quantity", limit: 1
    t.bigint "bg_total_price"
    t.string "file", limit: 256
    t.string "bg_remarks", limit: 256
    t.bigint "inst_user_id", null: false
    t.datetime "inst_ymd", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updt_ymd", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "del_ymd", default: -> { "CURRENT_TIMESTAMP" }
    t.bigint "del_flg", null: false
    t.string "updt_pgm_id", limit: 256
    t.string "updt_history", limit: 256
    t.string "updt_history_tanto", limit: 256
  end

  create_table "trn_manhr_details", primary_key: "mh_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "pj_id", null: false
    t.bigint "subpj_id", null: false
    t.bigint "team_id", null: false
    t.bigint "pj_name", null: false
    t.bigint "subpj_name", null: false
    t.bigint "team_name", null: false
    t.string "mh_task_name", limit: 256
    t.time "mh_work_time", null: false
    t.string "mh_remarks", limit: 256
    t.bigint "inst_user_id", null: false
    t.datetime "inst_ymd", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updt_ymd", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "del_ymd", default: -> { "CURRENT_TIMESTAMP" }
    t.bigint "del_flg", null: false
    t.string "updt_pgm_id", limit: 256
    t.string "updt_history", limit: 256
    t.string "updt_history_tanto", limit: 256
  end

  create_table "trn_performance_details", primary_key: "pfm_id", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "pj_id", null: false
    t.bigint "subpj_id", null: false
    t.bigint "team_id", null: false
    t.bigint "pj_name", null: false
    t.bigint "subpj_name", null: false
    t.bigint "team_name", null: false
    t.string "pfm_title", limit: 256
    t.bigint "bg_kind", null: false
    t.string "bg_detail", limit: 256, null: false
    t.integer "pfm_unit_price", null: false
    t.integer "pfm_quantity", limit: 1
    t.bigint "pfm_total_price"
    t.string "file", limit: 256
    t.string "pfm_remarks", limit: 256
    t.bigint "inst_user_id", null: false
    t.datetime "inst_ymd", default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updt_ymd", default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "del_ymd", default: -> { "CURRENT_TIMESTAMP" }
    t.bigint "del_flg", null: false
    t.string "updt_pgm_id", limit: 256
    t.string "updt_history", limit: 256
    t.string "updt_history_tanto", limit: 256
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
