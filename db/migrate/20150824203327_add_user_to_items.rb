class AddUserToItems < ActiveRecord::Migration
  def change
    add_reference :items, :user, index: true, foreign_key:true
    add_reference :check_lists, :user, index: true, foreign_key:true
  end
end
