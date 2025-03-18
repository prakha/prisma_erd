ActiveRecord::Schema.define(version: 2024_03_19_000001) do

  create_table "posts", force: :cascade do |t|
    t.string "title", null: false
    t.timestamps
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.timestamps
  end

  create_table "categories_posts", id: false do |t|
    t.references :post, null: false, foreign_key: true
    t.references :category, null: false, foreign_key: true
  end

end
