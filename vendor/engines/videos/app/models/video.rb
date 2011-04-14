class Video < ActiveRecord::Base

  acts_as_indexed :fields => [:title, :description, :url, :embed_code, :subject, :category]

  validates :title, :presence => true, :uniqueness => true
  
end
