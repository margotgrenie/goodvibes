# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  deadline    :date
#  priority    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  state       :integer
#

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
