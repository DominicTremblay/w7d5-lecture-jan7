class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments, force: true do |t|
      t.string :content
      t.references :quote
      t.timestamps
    end
  end
end
