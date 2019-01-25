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

class Answerchoice < ApplicationRecord
  validates :question_id, presence: true
  validates :answer_text, presence: true

  belongs_to :question,
  primary_key: :id,
  foreign_key: :question_id,
  class_name: 'Question'

  has_many :responses,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: 'Response'
end
