class CreateSchools < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :school_division
      t.string :prefecture
      t.string :name
      t.string :name_kana
      t.string :postal_code
      t.string :addres
      t.string :url
      t.string :google
      t.string :yahoo
      t.string :image_id
      t.datetime :created_at, default: -> { 'CURRENT_TIMESTAMP' }, null: false
      t.datetime :updated_at, default: -> { 'CURRENT_TIMESTAMP' }, null: false

    end
  end
end
