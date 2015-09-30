# == Schema Information
#
# Table name: items
#
#  id            :integer          not null, primary key
#  content       :string
#  check_list_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  completed     :boolean          default(FALSE)
#  user_id       :integer
#

class Item < ActiveRecord::Base
  belongs_to :check_list
  belongs_to :user

  def days_left
    7 - (DateTime.now.to_date - created_at.to_date).to_i
  end
end
