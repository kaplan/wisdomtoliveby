class CreateQuotes < ActiveRecord::Migration
  def up
    create_table :dicta do |t|
      t.text :dictum_text
      t.string :dictum_topic
      t.string :dictum_author
      t.string :author_profession
    end
  end

  def down
    drop_table :dictums
  end
end
