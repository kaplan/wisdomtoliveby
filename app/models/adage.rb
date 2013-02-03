class Adage < ActiveRecord::Base
  attr_accessible :content, :topic, :author, :profession
  validates_presence_of :content, :topic, :author, :profession
end
