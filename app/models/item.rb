# == Schema Information
#
# Table name: items
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#  deleted_at :datetime
#

class Item < ActiveRecord::Base
  acts_as_paranoid

  belongs_to :user
end
