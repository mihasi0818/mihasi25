class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.integer :post_id
      t.string  :title
      t.integer :a_id
      t.integer :b_id
      t.integer :c_id
      t.integer :d_id
      t.integer :e_id
      t.integer :f_id
      t.integer :g_id
      t.integer :h_id
     
      t.timestamps
    end
  end
end
