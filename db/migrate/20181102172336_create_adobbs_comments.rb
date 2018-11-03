class CreateAdobbsComments < ActiveRecord::Migration[5.1]
  def change
    create_table :adobbs_comments do |t|
      t.belongs_to :user, class_name: Adobbs.user_class.to_s, foreign_key: "user_id", index: true
      t.belongs_to :post, index: true
      t.text :body
      t.integer :upvotes, default: 0

      t.timestamps
    end
  end
end
