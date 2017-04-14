class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title #limited to 250 chars
      t.text :body #Text size 1 to 4294967296 

      t.timestamps
    end
  end
end
