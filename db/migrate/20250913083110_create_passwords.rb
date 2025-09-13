class CreatePasswords < ActiveRecord::Migration[8.0]
  def change
    create_table :passwords do |t|
      t.string :website_name
      t.string :website_url
      t.integer :user_id
      t.string :password

      t.timestamps
    end
  end
end
