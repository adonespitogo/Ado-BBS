class CreateAdobbsNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :adobbs_notifications do |t|
      t.text :content
      t.string :type

      t.timestamps
    end
  end
end
