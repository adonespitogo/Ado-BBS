class CreateAdobbsUserNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :adobbs_user_notifications do |t|

      t.belongs_to :user, class_name: Adobbs.user_class.to_s, foreign_key: "user_id", index: true
      t.belongs_to :notification, index: true
      t.boolean :read, default: false

      t.timestamps
    end
  end
end
