class CreateHomes < ActiveRecord::Migration[7.0]
  def change
    create_table :homes do |t|
      t.integer :likes_count2 ,default: 0
      t.timestamps
    end
  end
end
