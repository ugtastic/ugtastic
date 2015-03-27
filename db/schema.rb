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

ActiveRecord::Schema.define(version: 20150327180523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "transcripts", force: :cascade do |t|
    t.string   "locale"
    t.string   "video_id"
    t.text     "text"
    t.integer  "format",     default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "role"
  end

  create_table "you_tube_playlist_videos", force: :cascade do |t|
    t.integer  "playlist_id", null: false
    t.integer  "video_id",    null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "you_tube_playlist_videos", ["playlist_id"], name: "index_you_tube_playlist_videos_on_playlist_id", using: :btree
  add_index "you_tube_playlist_videos", ["video_id", "playlist_id"], name: "index_you_tube_playlist_videos_on_video_id_and_playlist_id", using: :btree
  add_index "you_tube_playlist_videos", ["video_id"], name: "index_you_tube_playlist_videos_on_video_id", using: :btree

  create_table "you_tube_playlists", force: :cascade do |t|
    t.string   "playlist_id",                 null: false
    t.json     "cache"
    t.string   "etag",                        null: false
    t.string   "title",                       null: false
    t.text     "description"
    t.string   "state",       default: "new"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "you_tube_videos", force: :cascade do |t|
    t.string   "video_id",                    null: false
    t.json     "cache"
    t.string   "etag",                        null: false
    t.string   "title",                       null: false
    t.text     "description"
    t.string   "state",       default: "new"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
