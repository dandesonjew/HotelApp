class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.belongs_to :hotel, foreign_key: true
      t.belongs_to :room_type, foreign_key: true
      t.boolean :occupied

      t.timestamps
    end
  end
end
