class CreateCheckLists < ActiveRecord::Migration
  def change
    create_table :check_lists do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end