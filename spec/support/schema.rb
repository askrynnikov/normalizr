ActiveRecord::Schema.define do
  create_table :publishers, force: true do |t|
    t.string :name
    t.string :phone_number
  end

  create_table :authors, force: true do |t|
    t.string :name
    t.string :nickname
    t.string :first_name
    t.string :last_name
    t.string :phone_number
    t.text   :biography
    t.text   :bibliography
    t.string :slug
  end

  create_table :books, force: true do |t|
    t.string  :author
    t.string  :isbn
    t.decimal :cnd_price
    t.decimal :us_price
    t.string  :summary
    t.string  :title
    t.text    :tags
  end

  create_table :journals, force: true do |t|
    t.string  :name
  end

  create_table :articles, force: true do |t|
    t.string  :title
    t.string  :slug
    t.string  :limited_slug
  end

  create_table :users, force: true do |t|
    t.string :firstname
    t.string :lastname
    t.string :maidenname
    t.string :favouritebook
  end
end
