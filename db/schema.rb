# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_09_121823) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charts", force: :cascade do |t|
    t.bigint "movie_id", null: false
    t.bigint "ranking_id", null: false
    t.float "rating"
    t.text "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_charts_on_movie_id"
    t.index ["ranking_id"], name: "index_charts_on_ranking_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "poster_url"
    t.string "synopsis"
    t.integer "year"
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rankings", force: :cascade do |t|
    t.integer "story"
    t.integer "acting"
    t.integer "dialog"
    t.integer "cinematography"
    t.integer "soundtrack"
    t.integer "style"
    t.integer "pacing"
    t.integer "originality"
    t.integer "characters"
    t.integer "enjoyment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "charts", "movies"
  add_foreign_key "charts", "rankings"
end
