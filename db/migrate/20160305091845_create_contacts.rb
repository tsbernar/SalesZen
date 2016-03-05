class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :email, null: false
    	t.string :address
    	t.string :company
    	t.string :title
    	#tracking
    	t.integer :email_count, default: 0, null: false
    	t.datetime :last_email_sent_at
    	t.boolean :do_not_contact

    	t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
