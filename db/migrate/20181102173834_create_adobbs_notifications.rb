class CreateAdobbsNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :adobbs_notifications do |t|
      t.belongs_to :user, class_name: Adobbs.user_class.to_s, index: true
      t.text :content
      t.string :type

      t.timestamps
    end
  end
end
