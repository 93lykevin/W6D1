# == Schema Information
#
# Table name: questions
#
#  id       :bigint           not null, primary key
#  question :string           not null
#  poll_id  :integer          not null
#

class Question < ApplicationRecord

  has_many :answer_choices,
    foreign_key: :question_id,
    class_name: :AnswerChoice

end
