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
#

class Item < ActiveRecord::Base
  belongs_to :check_list

end
