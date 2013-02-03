class ChangeTableNames < ActiveRecord::Migration
  def up
    drop_table :dicta

    create_table :adages do |t|
      t.text :adage_text
      t.string :adage_topic
      t.string :adage_author
      t.string :author_profession
    end
  end

  def down
    drop_table :adages
  end
end
