# == Schema Information
#
# Table name: restaurants
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  name                   :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  photo                  :string
#  roles_mask             :integer
#  user_type              :integer
#

require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
