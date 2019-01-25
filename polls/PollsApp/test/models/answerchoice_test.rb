# == Schema Information
#
# Table name: answerchoices
#
#  id          :bigint(8)        not null, primary key
#  question_id :integer          not null
#  answer_text :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class AnswerchoiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
