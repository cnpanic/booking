class CreateFaqReplies < ActiveRecord::Migration
  def change
    create_table :faq_replies do |t|
      t.text :content
      t.integer :user_id
      t.integer :faq_id

      t.timestamps null: false
    end
  end
end
