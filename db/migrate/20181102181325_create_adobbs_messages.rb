class CreateAdobbsMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :adobbs_messages do |t|
      t.references :sender
      t.references :receiver
      t.text :body
      t.boolean :read, default: false

      t.timestamps
    end
  end
end
