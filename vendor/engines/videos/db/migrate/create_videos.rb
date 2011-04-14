class CreateVideos < ActiveRecord::Migration

  def self.up
    create_table :videos do |t|
      t.string :title
      t.text :description
      t.string :url
      t.string :embed_code
      t.integer :rating
      t.integer :age_group
      t.integer :finder_id
      t.string :subject
      t.string :category
      t.integer :position

      t.timestamps
    end

    add_index :videos, :id

    load(Rails.root.join('db', 'seeds', 'videos.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "videos"})

    Page.delete_all({:link_url => "/videos"})

    drop_table :videos
  end

end
