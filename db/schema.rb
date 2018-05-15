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

ActiveRecord::Schema.define(version: 20180515201243) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "title"
    t.text "summary"
    t.text "content"
    t.string "image"
    t.boolean "publish"
    t.bigint "category_id"
    t.bigint "moderator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "imagetext"
    t.string "document"
    t.index ["category_id"], name: "index_articles_on_category_id"
    t.index ["moderator_id"], name: "index_articles_on_moderator_id"
  end

  create_table "assets", force: :cascade do |t|
    t.string "image"
    t.text "imagetext"
    t.bigint "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_assets_on_article_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "categorytype"
  end

  create_table "documents", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "document"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_documents_on_post_id"
  end

  create_table "galleries", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_galleries_on_post_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "image"
    t.text "description"
    t.bigint "gallery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gallery_id"], name: "index_images_on_gallery_id"
  end

  create_table "links", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_links_on_post_id"
  end

  create_table "moderators", force: :cascade do |t|
    t.string "fullname"
    t.string "username"
    t.string "role"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post_tags", force: :cascade do |t|
    t.bigint "post_id"
    t.bigint "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_post_tags_on_post_id"
    t.index ["tag_id"], name: "index_post_tags_on_tag_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.boolean "publish"
    t.bigint "category_id"
    t.bigint "moderator_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "ancestry"
    t.boolean "showpost"
    t.text "metatags"
    t.integer "sortorder"
    t.index ["ancestry"], name: "index_posts_on_ancestry"
    t.index ["category_id"], name: "index_posts_on_category_id"
    t.index ["moderator_id"], name: "index_posts_on_moderator_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sectiontype"
    t.index ["post_id"], name: "index_sections_on_post_id"
  end

  create_table "settings", force: :cascade do |t|
    t.string "site_name"
    t.integer "post_per_page"
    t.boolean "under_maintenance"
    t.boolean "tag_visibility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "fullname"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "articles", "categories"
  add_foreign_key "articles", "moderators"
  add_foreign_key "assets", "articles"
  add_foreign_key "documents", "posts"
  add_foreign_key "galleries", "posts"
  add_foreign_key "images", "galleries"
  add_foreign_key "links", "posts"
  add_foreign_key "post_tags", "posts"
  add_foreign_key "post_tags", "tags"
  add_foreign_key "posts", "categories"
  add_foreign_key "posts", "moderators"
  add_foreign_key "sections", "posts"
end
