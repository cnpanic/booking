class CreateFaqreplies < ActiveRecord::Migration
  def change
    create_table :faqreplies do |t|

      t.text :content
      t.integer :user_id
      t.integer :faq_id


      t.timestamps null: false
    end
  end
end
