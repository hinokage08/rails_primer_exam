class CreateWebsites < ActiveRecord::Migration[5.2]
  def change
    create_table :websites do |t|
      t.text :content
      t.timestamp :created_at
    end
  end
end
