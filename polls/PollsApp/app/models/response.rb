# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  answer_choice_id :integer
#  respondent_id    :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Response < ApplicationRecord
  validates :answer_choice_id, :respondent_id, presence: true

  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :respondent_id,
    class_name: 'User'

  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: 'Answerchoice'

  has_one :question,
    through: :answer_choice,
    source: :question

  def sibling_responses
    own_id = self.id
    self.question.responses.where.not(responses: {id: own_id})
  end  

  def respondent_already_answered?
    response_ids = sibling_responses.pluck(:respondent_id)
    response_ids.include?(self.respondent_id)
    

  end


end
