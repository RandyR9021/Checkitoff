class Item < ActiveRecord::Base
  belongs_to :check_list

  def completed?
    !completed_at.blank?
  end
end
