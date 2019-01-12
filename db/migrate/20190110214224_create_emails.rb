class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :email
      t.boolean :primary
      t.boolean :confirmed
      t.integer :user_id
      t.timestamps
    end
  end
end
