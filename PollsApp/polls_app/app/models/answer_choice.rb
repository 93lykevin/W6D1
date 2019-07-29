# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint           not null, primary key
#  answer      :string           not null
#  question_id :integer          not null
#  poll_id     :integer          not null
#

class AnswerChoice < ApplicationRecord

  belongs_to :question,
    foreign_key: :question_id,
    class_name: :Question

  belongs_to :poll,
    foreign_key: :poll_id,
    class_name: :Poll

  has_many :responses,
    foreign_key: :answer_choice_id,
    class_name: :Response

end
