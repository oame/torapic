# == Schema Information
#
# Table name: photos
#
#  id                     :integer          not null, primary key
#  image                  :string(255)
#  user_id                :integer
#  expired_at             :datetime
#  image_background_color :string(255)
#  image_text_color       :string(255)
#  deleted_at             :datetime
#  created_at             :datetime
#  updated_at             :datetime
#

require 'spec_helper'

describe Photo do
  pending "add some examples to (or delete) #{__FILE__}"
end
