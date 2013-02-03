class ChangeColNames < ActiveRecord::Migration

  def change
    change_table :adages do |t|
      t.rename :adage_text, :content
      t.rename :adage_topic, :topic
      t.rename :adage_author, :author
      t.rename :author_profession, :profession
    end
  end

end
