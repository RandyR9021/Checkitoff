# == Schema Information
#
# Table name: check_lists
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class CheckList < ActiveRecord::Base
	has_many :items
	belongs_to :user
end
