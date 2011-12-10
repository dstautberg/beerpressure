class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :creator_id
      t.string :title
      t.string :description
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
