# == Schema Information
#
# Table name: photos
#
#  id                 :integer          not null, primary key
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  user_id            :integer
#  expired_at         :datetime
#  deleted_at         :datetime
#  created_at         :datetime
#  updated_at         :datetime
#

require 'spec_helper'

describe Photo do
  pending "add some examples to (or delete) #{__FILE__}"
end
