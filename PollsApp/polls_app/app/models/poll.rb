# == Schema Information
#
# Table name: polls
#
#  id      :bigint           not null, primary key
#  title   :string           not null
#  user_id :integer          not null
#

class Poll < ApplicationRecord

  has_many :answer_choices,
    foreign_key: :poll_id,
    class_name: :AnswerChoice

  belongs_to :user,
    foreign_key: :user_id,
    class_name: :User

end
