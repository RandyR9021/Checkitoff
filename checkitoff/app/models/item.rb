class Item < ActiveRecord::Base
  belongs_to :check_list

  def completed?
  end
end
