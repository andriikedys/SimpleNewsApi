class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.text :author
      t.string :title
      t.text :description
      t.text :url
      t.text :url_to_image
      t.date :published_at
      t.text :content
      # t.jsonb :content, default: {}
      t.timestamps
    end
    # add_index :articles, :content, using: :gin
  end
end
