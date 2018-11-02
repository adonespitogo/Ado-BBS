class CreateAdobbsPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :adobbs_posts do |t|
      t.belongs_to :user, class_name: Adobbs.user_class.to_s, index: true
      t.string :title
      t.text :body
      t.string :slug
      t.datetime :last_commented_on

      t.timestamps
    end
  end
end
