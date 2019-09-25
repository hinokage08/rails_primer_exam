class CreateWebsite < ActiveRecord::Migration[5.2]
  def change
    create_table :websites do |t|
    t.text :content
    end
  end
end
