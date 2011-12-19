class CreateInvitees < ActiveRecord::Migration
  def change
    create_table :invitees do |t|
      t.string :email
      t.string :uid
      t.string :key
      t.string :response

      t.timestamps
    end
  end
end
